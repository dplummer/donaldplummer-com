--- 
title: "Using HAML with Middleman Blog"
date: 19/06/2012
---

I'm writing this blog with
[middleman-blog](https://github.com/middleman/middleman-blog), a nice
template for [middleman](https://github.com/middleman/middleman), which
is a static site generator for Ruby. The first problem I ran into was
using [HAML](http://haml.info/) for the templating. When navigating to a
blog page, you're greeted with the error:

    Errno::ENOENT at /2012/06/15/ree-on-archlinux.html
    No such file or directory - source/layout.erb

The problem is the layout engine must be set for middleman-blog. Just
add the following to your config.rb:

    :::ruby
    set :blog_layout_engine, 'haml'
