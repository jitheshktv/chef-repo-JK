#
# Cookbook Name:: s3download
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

s3_file '/tmp/testfile' do 
  remote_path "/test/s3_file.tgz" 
  bucket "ems-8.2.2-bin" 
  s3_url "https://s3-us-west-2.amazonaws.com/ems-8.2.2-bin"
  aws_access_key_id "AKIAJNQ5PSCGLGV5FBHA" 
  aws_secret_access_key "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" 
  action :create 
end
