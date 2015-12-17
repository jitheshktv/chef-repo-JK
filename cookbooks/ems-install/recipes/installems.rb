#
# Cookbook Name:: ems-install
# Recipe:: installems
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

ems_bin_target_path = node['ems-install']['install']['ems_bin_target_path']
ems_install_responsefile = "#{ems_bin_target_path}/#{node['ems-install']['install']['response_file']}"
ems_bin = "#{ems_bin_target_path}/#{node['ems-install']['install']['linux_bin']}"
ENV['JAVA_HOME'] = '/usr/lib/jvm/java'

execute 'installems' do
  command "#{ems_bin} -silent -V responseFile=#{ems_install_responsefile}"
end
