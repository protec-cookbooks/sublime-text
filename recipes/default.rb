#
# Cookbook Name:: sublime-text
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/sublime-text_build-3083_amd64.deb" do
  source "http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb"
  mode 0644
  checksum "8326870b9c4d18df2ee5f2225d3efbe0f72d957934f6c47e3cecdee135ab9a86"
end

dpkg_package "sublime-text" do
  source "/tmp/sublime-text_build-3083_amd64.deb"
  action :install
end
