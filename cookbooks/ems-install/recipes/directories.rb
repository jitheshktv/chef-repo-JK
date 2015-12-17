#
# Cookbook Name:: ems-install
# Recipe:: directories
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
# recipe to create the directory structure needed for the ems installation

directory node['ems-install']['install']['ems_install_dir'] do
  owner node['ems-install']['install']['user']
  group node['ems-install']['install']['group']
  mode '0755'
  recursive true
  action :create
end

directory node['ems-install']['install']['ems_log_dir'] do
  owner node['ems-install']['install']['user']
  group node['ems-install']['install']['group']
  mode '0755'
  recursive true
  action :create
end
