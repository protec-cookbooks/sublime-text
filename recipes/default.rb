#
# Cookbook Name:: sublime-text
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/sublime-text_build-3065_amd64.deb" do
  source "http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb"
  mode 0644
  checksum "cd71f68a10f2b549788ca9b4a504aa596a3c2fff176982d819b82f5000ebc3b6"
end

dpkg_package "sublime-text" do
  source "/tmp/sublime-text_build-3059_amd64.deb"
  action :install
end
