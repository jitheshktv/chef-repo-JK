#
# Cookbook Name:: bw-install
# Recipe:: directories
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Create the directories

tibco_home_dir = node['bw-install']['install']['tibco_home_dir']
logs_home_dir = node['bw-install']['install']['logs_home_dir']
bw_install_dir = node['bw-install']['install']['bw_install_dir']
bw_instance_dir = node['bw-install']['install']['bw_instance_dir']
logs_instance_dir = node['bw-install']['install']['logs_instance_dir']
bw_bin_target_path = node['bw-install']['install']['bw_bin_target_path']
bw_conf_templates_dir = node['bw-install']['config']['bw_conf_templates_dir']
bw_home_dir = node['bw-install']['install']['bw_home_dir']
install_user = node['bw-install']['install']['user']
install_group = node['bw-install']['install']['group']
config_user = node['bw-install']['config']['user']
config_group = node['bw-install']['config']['group']

directory tibco_home_dir do
  owner install_user
  group install_group
  mode '0755'
  recursive true
  action :create
end

directory logs_home_dir do
  owner install_user
  group install_group
  mode '0755'
  recursive true
  action :create
end

directory bw_install_dir do
  owner install_user
  group install_group
  mode '0755'
  recursive true
  action :create
end

directory bw_home_dir do
  owner install_user
  group install_group
  mode '0755'
  recursive true
  action :create
end

directory bw_instance_dir do
  owner config_user
  group config_group
  mode '0755'
  recursive true
  action :create
end

directory logs_instance_dir do
  owner config_user
  group config_group
  mode '0755'
  recursive true
  action :create
end

directory bw_conf_templates_dir do
  owner install_user
  group install_group
  mode '0755'
  recursive true
  action :create
end

directory bw_bin_target_path do
  owner install_user
  group install_group
  mode '0755'
  recursive true
  action :create
end
