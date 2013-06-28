#
# Cookbook Name:: sublime-text
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/sublime-text_build-3047_amd64.deb" do
  source "http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3047_amd64.deb"
  mode 0644
  checksum "e0af3d0c711988266b9a40bb7cb6b2198617080edde1bebdc66fc876a01ef470"
end

dpkg_package "sublime-text" do
  source "/tmp/sublime-text_build-3047_amd64.deb
  action :install
end
