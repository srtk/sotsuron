#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-
texMain="thesis.tex"
if File.exist?(texMain)
  system("echo aaa")
else
  system("echo bbb")
end
