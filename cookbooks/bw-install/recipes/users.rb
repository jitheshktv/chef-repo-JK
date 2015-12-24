#
# Cookbook Name:: bw-install
# Recipe:: users
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Create group. Need to add not_if
group node['bw-install']['install']['group']
group node['bw-install']['config']['group']

# Create user. Needs to add not_if
user node['bw-install']['install']['user'] do
  group node['bw-install']['install']['group']
  home "/home/#{node['bw-install']['install']['user']}"
  shell '/bin/bash'
end

user node['bw-install']['config']['user'] do
  group node['bw-install']['config']['group']
  home "/home/#{node['bw-install']['config']['user']}"
  shell '/bin/bash'
end
