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

from xmlrpclib import Fault
from time import strptime, localtime, mktime

import py.test
from minimock import Mock

from .conftest import create_mocked_vim_vars_from_blogconfig
from blogit import BlogIt
import blogit


def test_received_time(accept_blogconfig, monkeypatch):
    """ Test that the time we get from wordpress is correct (TZ calculus)
    This test requires the users time zone in wordpress to be set to MET
    """
    mocked_eval = Mock('vim_eval')
    monkeypatch.setattr(blogit.vim, 'mocked_eval', mocked_eval)
    post_id = accept_blogconfig.post_ids['time']
    mocked_vim_vars = create_mocked_vim_vars_from_blogconfig(accept_blogconfig)
    post = BlogIt.WordPressBlogPost(post_id, vim_vars=mocked_vim_vars)
    try:
        post.getPost()
    except Fault, e:
        py.test.skip('Failed to load post %s-%s: %s' %
                     (accept_blogconfig.blog_name, post_id, e))
    # This test requires the users time zone in wordpress to be set to MET
    assert post.get_server_var__Date() == 'Mon Nov 30 18:53:47 2009'

def test_update_time(accept_blogconfig, monkeypatch):
    mocked_eval = Mock('vim_eval')
    monkeypatch.setattr(blogit.vim, 'mocked_eval', mocked_eval)
    post_id = accept_blogconfig.post_ids['time_resend']
    mocked_vim_vars = create_mocked_vim_vars_from_blogconfig(accept_blogconfig)
    post = BlogIt.WordPressBlogPost(post_id, vim_vars=mocked_vim_vars)
    try:
        post.getPost()
        post.do_send(push=0)
    except Fault, e:
        py.test.skip('Failed to load post %s-%s: %s' %
                     (accept_blogconfig.blog_name, post_id, e))
    # This test requires the users time zone in wordpress to be set to MET
    assert abs(mktime(strptime(post.get_server_var__Date())) -
               mktime(localtime())) \
            < 600
