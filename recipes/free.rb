#
# Cookbook Name:: sublime-text
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/Sublime Text 2.0.1 x64.tar.bz2" do
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1%20x64.tar.bz2"
  mode 0644
  checksum "858df93325334b7c7ed75daac26c45107e0c7cd194d522b42a6ac69fae6de404"
end

directory "/opt/sublime-text" do
  owner "root"
  group "root"
  mode 00755
  action :create
end

script "sublime-text-extract" do
  interpreter "bash"
  code <<-EOH
    tar xfj /tmp/Sublime Text 2.0.1 x64.tar.bz2 -C /opt/sublime-text
  EOH
end

link "/usr/local/bin/sublime-text" do
  to "/opt/sublime-text/Sublime Text 2/sublime-text"
  link-type :symbolic
end
