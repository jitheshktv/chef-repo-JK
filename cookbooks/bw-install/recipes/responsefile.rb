#
# Cookbook Name:: bw-install
# Recipe:: responsefile
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# recipe to create the response file for the BW installation

bw_bin_target_path = node['bw-install']['install']['bw_bin_target_path']
bw_bin = "#{bw_bin_target_path}/#{node['bw-install']['install']['linux_bin']}"
bw_install_responsefile = "#{bw_bin_target_path}/#{node['bw-install']['install']['response_file']}"

template bw_install_responsefile do
  source 'bwInstallResponsefile.silent.erb'
  mode '0755'
end
