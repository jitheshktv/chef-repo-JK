#
# Cookbook Name:: ems-install
# Recipe:: s3download
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
ems_bin_target_path = node['ems-install']['install']['ems_bin_target_path']
ems_bin_zip = node['ems-install']['install']['linux_bin_zip']
ems_bin_target = "#{ems_bin_target_path}/#{ems_bin_zip}"
ems_bin_source = node['ems-install']['install']['linux_bin_source']
ems_bin = node['ems-install']['install']['linux_bin']

directory ems_bin_target_path do
  owner 'root'
  group 'root'
  mode '0777'
end

remote_file ems_bin_target do
  source ems_bin_source
  owner 'root'
  group 'root'
  mode '0777'
end

package 'unzip'

execute 'unzip_bin_zip' do
  command "unzip #{ems_bin_target}"
  cwd ems_bin_target_path
  not_if { File.exist? "#{ems_bin_target_path}/#{ems_bin}" }
end

file "#{ems_bin_target_path}/#{ems_bin}" do
  mode '0755'
end
