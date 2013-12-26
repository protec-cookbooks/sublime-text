#
# Cookbook Name:: sublime-text
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/sublime-text_build-3059_amd64.deb" do
  source "http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3059_amd64.deb"
  mode 0644
  checksum "3dfad895479eb75fbf08f13ae6f0739b114c318b7a354dd1e632fa7453e5878b"
end

dpkg_package "sublime-text" do
  source "/tmp/sublime-text_build-3059_amd64.deb"
  action :install
end
