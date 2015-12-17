#
# Cookbook Name:: s3download
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

remote_file '/tmp/TIBCOUniversalInstaller-lnx-x86.zip' do
  source 'https://s3-us-west-2.amazonaws.com/ems-8.2.2-bin/linux/TIBCOUniversalInstaller-lnx-x86.zip'
  owner 'root'
  group 'root'
  mode '0777'
end
