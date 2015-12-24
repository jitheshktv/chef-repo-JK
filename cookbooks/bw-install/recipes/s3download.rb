#
# Cookbook Name:: bw-install
# Recipe:: s3download
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

bw_bin_target_path = node['bw-install']['install']['bw_bin_target_path']
bw_bin_zip = node['bw-install']['install']['linux_bin_zip']
bw_bin_target = "#{bw_bin_target_path}/#{bw_bin_zip}"
bw_bin_source = node['bw-install']['install']['linux_bin_source']
bw_bin = node['bw-install']['install']['linux_bin']
install_group = node['bw-install']['install']['group']
install_user = node['bw-install']['install']['user']

# create the required directories
directory bw_bin_target_path do
  owner install_user
  group install_group
  mode '0777'
end

# Download the file from S3
remote_file bw_bin_target do
  source bw_bin_source
  owner install_user
  group install_group
  mode '0777'
end

# Install the unzip package
package 'unzip'

# Unzip the binary zip file
execute 'unzip_bin_zip' do
  command "unzip #{bw_bin_target}"
  cwd bw_bin_target_path
  not_if { File.exist? "#{bw_bin_target_path}/#{bw_bin}" }
end

# Change the ownership of the binary
file "#{bw_bin_target_path}/#{bw_bin}" do
  mode '0755'
end
