#
# Cookbook Name:: bw-install
# Recipe:: bwinstall
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Install bw binary using the response file

bw_bin_target_path = node['bw-install']['install']['bw_bin_target_path']
bw_bin = "#{bw_bin_target_path}/#{node['bw-install']['install']['linux_bin']}"
bw_install_responsefile = "#{bw_bin_target_path}/#{node['bw-install']['install']['response_file']}"
bwagent = node['bw-install']['install']['bw_agent']
bw_install_dir = node['bw-install']['install']['bw_install_dir']
install_group = node['bw-install']['install']['group']
install_user = node['bw-install']['install']['user']
config_group = node['bw-install']['install']['group']
config_user = node['bw-install']['install']['user']

execute 'installbw' do
  command "#{bw_bin} -silent -V responseFile=#{bw_install_responsefile}"
  not_if { File.exist? "#{bwagent}" }
end

# Change the ownership of the directories
execute 'chown-bwinstall-directories' do
  command "chown -R #{install_user}:#{install_group} #{bw_install_dir}"
  user 'root'
  action :run
end
