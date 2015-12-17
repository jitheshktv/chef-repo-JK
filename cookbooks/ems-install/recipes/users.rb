#
# Cookbook Name:: ems-install
# Recipe:: users
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Recipe to create the user and group to own the ems installation directory

group node['ems-install']['install']['group']

user node['ems-install']['install']['user'] do
  group node['ems-install']['install']['group']
end
