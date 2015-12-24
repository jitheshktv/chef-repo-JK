#
# Cookbook Name:: bw-install
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'bw-install::users'
include_recipe 'bw-install::directories'
include_recipe 'bw-install::s3download'
include_recipe 'bw-install::responsefile'
include_recipe 'bw-install::bwinstall'
