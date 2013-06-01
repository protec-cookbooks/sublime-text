#
# Cookbook Name:: sublime-text
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/sublime-text_build-3033_amd64.deb" do
  source "http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3033_amd64.deb"
  mode 0644
  checksum "102139a00f2c0b109e9120313ba281c525bd8f6b8eda471328c21bac4d080a54"
end

dpkg_package "sublime-text" do
  source "/tmp/sublime-text_build-3033_amd64.deb"
  action :install
end
