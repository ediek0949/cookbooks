#
# Cookbook Name:: animapp
# Recipe:: default
#
# Copyright 2015, CNN
#
# All rights reserved - Do Not Redistribute
#

template "#{node[:animapp][:security_loc]}/access.conf" do
  source 'access.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

# Currently this script was manually put on the box
# ASG is still undecided on who should mange the script CHEF etc...
# script - mine-db-for-item-data.sh
cron 'grab info from VizOne database for symlink hackery' do
  action :create
  minute '*/5'
  hour '*'
  day '*'
  month '*'
  weekday '*'
  user node[:animapp][:user]
  command node[:animapp][:command]
end
