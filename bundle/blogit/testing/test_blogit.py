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


from xmlrpclib import DateTime
import time

from .blogit import BlogIt


def test_enc():
    assert BlogIt.enc(u'bla') == 'bla'
    assert BlogIt.enc('bla') == 'bla'
    assert type(BlogIt.enc(u'ä')) == str
    assert BlogIt.enc(u'ä') == 'ä'


def test_to_vim_list():
    assert BlogIt.to_vim_list([]) == '[  ]'
    assert BlogIt.to_vim_list(['a']) == '[ "a" ]'
    assert BlogIt.to_vim_list(['a', 'b']) == '[ "a", "b" ]'
    assert BlogIt.to_vim_list(['a', 'b', 'c']) == '[ "a", "b", "c" ]'
    assert BlogIt.to_vim_list([r'\n']) == r'[ "\\n" ]'
    assert BlogIt.to_vim_list(['a"b']) == r'[ "a\"b" ]'
    assert BlogIt.to_vim_list(['Bäume']) == '[ "Bäume" ]'


def test_vim_vars(vim_vars):
    # Really tests mock_vim more than BlogIt.VimVars
    u = vim_vars.blog_username    # to get better py.test debug message
    assert u == 'user'
    p = vim_vars.blog_password
    assert p == 'password'
    url = vim_vars.blog_url
    assert url == 'http://example.com'
    #assert vim_vars.blog_postsource
    n = vim_vars.vim_blog_name
    assert n == 'blogit'


def test_DateTime_to_str(monkeypatch):
    monkeypatch.setenv('TZ', 'EST+05EDT,M4.1.0,M10.5.0')
    time.tzset()
    assert BlogIt.DateTime_to_str('invalid input') == ''
    assert BlogIt.DateTime_to_str(DateTime('20090628T17:38:58'),
                      '%a %b %d %H:%M:%S %Y') == 'Sun Jun 28 17:38:58 2009'


def test_str_to_DateTime(monkeypatch):
    monkeypatch.setenv('TZ', 'EST+05EDT,M4.1.0,M10.5.0')
    time.tzset()
    assert isinstance(BlogIt.str_to_DateTime(), DateTime)
    assert str(BlogIt.str_to_DateTime('Sun Jun 28 19:38:58 2009',
                                      '%a %b %d %H:%M:%S %Y'))\
            == '20090628T19:38:58'

    assert str(BlogIt.str_to_DateTime(BlogIt.DateTime_to_str(
                                            DateTime('20090628T17:38:58'))))\
            == '20090628T17:38:58'


def pytest_funcarg__vim_vars(request):
    return BlogIt.VimVars()

