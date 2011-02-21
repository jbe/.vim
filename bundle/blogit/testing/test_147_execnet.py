#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) 2009 Romain Bignon
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, version 3 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.


from __future__ import with_statement

from subprocess import Popen, PIPE
import socket
import SocketServer
import time
import os.path

import py
try:
    import execnet
except ImportError:
    try:
        from py import execnet
    except ImportError:
        execnet = None

from .test_147 import pytest_funcarg__markdown, pytest_funcarg__markdown_file


def pytest_funcarg__markdown_setting(request):
    py.test.skip('funcarg not implemented for general case')
    # should be like pytest_funcarg_markdown just requires users setting
    # of (blogname)_format to be passed via commandline option


def pytest_funcarg__markdown_file_setting(request):
    py.test.skip('funcarg not implemented for general case')
    # should be like pytest_funcarg_markdown_file just requires users setting
    # of (blogname)_format to be passed via commandline option


def test_with_execnet(vim_gateway):
    channel = vim_gateway.remote_exec("""
        channel.send(3)
        """)
    buf = channel.receive()
    channel.close()
    assert buf == 3


def test_sending(vim_gateway):
    channel = vim_gateway.remote_exec("""
        import vim
        vim.current.buffer[:] = ['hallo']
        vim.command('%s/a/e')
        channel.send(vim.current.buffer[0])
        """)
    buf = channel.receive()
    channel.close()
    assert buf == 'hello'


def test_blogit_preview(vim_gateway, markdown_file_setting):
    mkd_file, html_file, convert_code = markdown_file
    if os.path.exists('.%s.swp' % mkd_file):
        py.test.skip(('%s is already opened with vim. Please close or ' +
                      'remove .%s.swp') % (mkd_file, mkd_file))
    channel = vim_gateway.remote_exec("""
        import vim
        vim.command('e ' + channel.receive())
        vim.command('Blogit this')
        vim.command('py p = blogit.current_post')
        vim.command('py vim.current.buffer[:] = ' +
                    'p.read_post(vim.current.buffer[:])[p.POST_BODY]' +
                    '.splitlines()')
        channel.send(vim.current.buffer[:])
        """)
    channel.send(mkd_file)
    buf = channel.receive()
    channel.close()
    with open(html_file) as f:
        text = f.read()
    assert '\n'.join(buf) == text.strip()


def assert_same_html(one, two):
    " assert strings are identical ignoring the whitespace "
    assert (one.replace(' ', '').replace('\n', '') ==
            two.replace(' ', '').replace('\n', ''))


def test_blogit_format(vim_gateway, markdown_setting):
    channel = vim_gateway.vim_exec("""
        vim.command('Blogit new')
        send_to_vim('execnet', channel.receive())
        vim.command('py execnet = blogit.current_post.format(execnet)')
        channel.send(receive_from_vim('execnet'))
        """)
    mkd_text, html_text, convert_code = markdown
    channel.send(mkd_text)
    buf = channel.receive()
    assert buf == html_text


def test_blogit_filter(vim_gateway, markdown_setting):
    channel = vim_gateway.vim_exec("""
        vim.command('Blogit new')
        send_to_vim('execnet', channel.receive())
        vim.command('py execnet = blogit.current_post.filter(execnet, ' +
                                                            '"format")')
        channel.send(receive_from_vim('execnet'))
        """)
    mkd_text, html_text, convert_code = markdown
    channel.send(mkd_text)
    buf = channel.receive()
    assert buf == html_text


def test_blogit_filter_mocked_vim_vars(vim_gateway, markdown):
    channel = vim_gateway.vim_exec("""
        vim.command('Blogit new')
        vim.command('py from minimock import Mock')
        vim.command('py blogit.current_post.vim_vars.vim_variable = ' +
                    'Mock("vim_variable", returns="%s")' % channel.receive())
        send_to_vim('execnet', channel.receive())
        vim.command('py execnet = blogit.current_post.filter(execnet, ' +
                                                            '"format")')
        channel.send(receive_from_vim('execnet'))
        """)
    mkd_text, html_text, convert_code = markdown
    channel.send(convert_code)
    channel.send(mkd_text)
    buf = channel.receive()
    assert buf == html_text


def test_blogit_format_setting(vim_gateway, markdown):
    channel = vim_gateway.remote_exec("""
        import vim
        channel.send(vim.eval('blogit_format'))
        """)
    convert_code = markdown[2]
    buf = channel.receive()
    channel.close()
    assert buf == convert_code


def test_blogit_format_setting_blog_name_format(vim_gateway, markdown_setting):
    channel = vim_gateway.remote_exec("""
        import vim
        try:
            blog = vim.eval('blog_name')
        except vim.error:
            blog = 'blogit'
        try:
            channel.send(vim.eval(blog + '_format'))
        except vim.error:
            channel.send("%s_format is unset." % blog)
        """)
    convert_code = markdown[2]
    buf = channel.receive()
    assert buf == convert_code


def test_blogit_format_vim_varibale(vim_gateway, markdown_setting):
    channel = vim_gateway.vim_exec("""
        vim.command('Blogit new')
        vim.command('py execnet = blogit.current_post.vim_vars.vim_variable(' +
                                                                   '"format")')
        channel.send(receive_from_vim('execnet'))
        """)
    convert_code = markdown[2]
    buf = channel.receive()
    assert buf == convert_code


def test_execnet_eval_pickle(vim_gateway):
    import pickle
    channel = vim_gateway.remote_exec(r"""
        import vim
        vim.command('py import pickle')
        vim.command('py import vim')
        vim.command('py b = pickle.dumps([1, 2, 3])')
        vim.command('''py vim.command("let execnet='%s'" % b)''')
        b = vim.eval("execnet")
        channel.send(b)""")
    buf = channel.receive()
    channel.close()
    assert buf == pickle.dumps([1, 2, 3])


def test_execnet__receive_from_vim(vim_gateway):
    channel = vim_gateway.vim_exec(r"""
        vim.command('py bla = [1, 2, 3]')
        channel.send(receive_from_vim('bla')) """)
    buf = channel.receive()
    channel.close()
    assert buf == [1, 2, 3]


def test_execnet__send_to_vim(vim_gateway):
    channel = vim_gateway.vim_exec(r"""
        while True:
            send_to_vim('bla', channel.receive())
            channel.send(receive_from_vim('bla')) """)
    for obj in ([1, 2, 3], 'abcd', 'ab"cd', "ab'cd", 'ab\\cd', 'ab\ncd'):
        channel.send(obj)
        buf = channel.receive()
        assert buf == obj


def code_decorator__vim_exec(code):
    post_code = py.code.Source(code)     # deindent code
    pre_code = py.code.Source(r"""
        import vim
        import pickle
        vim.command('py import pickle')
        vim.command('py import vim')
        vim.command('pyfile vim_execnet.py')

        def vim_str(text):
            ''' Returns the vim code sniplet containing a given string.

            Code doubled in vim_execnet.py
            '''
            return '"%s"' % text.replace('\\', '\\\\').replace('"', '\\"')

        def receive_from_vim(var_name):
            vim.command("py vim.command('''let execnet=%s ''' % " +
                        'vim_str(pickle.dumps(%s)))' % var_name)
            return pickle.loads(vim.eval("execnet"))

        def send_to_vim(var_name, val):
            vim.command('let execnet=%s ' % vim_str(pickle.dumps(val)))
            vim.command("py %s = pickle.loads(vim.eval('execnet'))" % var_name)

        """)
    return str(pre_code) + str(post_code)


def pytest_funcarg__vim_gateway(request):
    if not request.config.option.acceptance:
        py.test.skip('specify -A to run acceptance tests')
    if execnet is None:
        py.test.skip('Install execnet to run vim acceptance tests.')
    #skip_assert_port_available('localhost', 8888)
    vim_proc = Popen(['vim', '-c', 'pyfile socketserver.py'], stdout=PIPE)
    #   changing socketservers listen port fails:
    #       '-c', 'python import sys; sys.argv = ["localhost:7777"]',
    #   Capture vim's stdout so it doesn't hide py.test's error messages.
    gw = create_socket_gateway('localhost', 8888)
    setattr(gw, 'vim_exec',
            lambda code: gw.remote_exec(code_decorator__vim_exec(code)))

    def teardown():
        try:
            channel = gw.remote_exec('import vim; vim.command("q!")')
            for i in range(90):
                if not vim_proc.poll() is None:
                    break
                time.sleep(1)
            else:
                vim_proc.kill()    # only works in python2.6+
            gw.exit()
        except:
            pass
    request.addfinalizer(teardown)
    return gw


def skip_assert_port_available(host, port):
    """ Warning: Only works in python2.6+ """
    try:
        sock = SocketServer.TCPServer((host, port),
                                        SocketServer.BaseRequestHandler)
    except socket.error, e:
        if e.args[0] == 98:
            # 'Address already in use'
            py.test.skip('Port %s is already in use.' % port)
        else:
            py.test.skip('Failed to start socketserver: %s.' % str(e.args))
    finally:
        sock.shutdown()    # needs python2.6+


def create_socket_gateway(host, port):
    for i in range(90):
        try:
            return execnet.SocketGateway(host, port)
        except socket.error, e:
            if e.args[0] == 111:
                # 'Conection refused': Server isn't up, yet.
                time.sleep(1)
            else:
                raise
    else:
        py.test.skip('failed to connect to vim via socketserver.')
