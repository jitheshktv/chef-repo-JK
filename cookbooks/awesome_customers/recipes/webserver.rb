#
# Cookbook Name:: awesome_customers
# Recipe:: webserver
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

httpd_service 'customers' do
	mpm 'prefork'
	action [:create, :start]
end

httpd_config 'customers' do
	instance 'customers'
	source 'customers.conf.erb'
	notifies :restart, 'httpd_service[customers]'
end

directory node['awesome_customers']['document_root'] do
	recursive true
end

password_secret = Chef::EncryptedDataBagItem.load_secret(node['awesome_customers']['passwords']['secret_path'])
user_password_data_bag_item = Chef::EncryptedDataBagItem.load('passwords', 'db_admin_password', password_secret)

template "#{node['awesome_customers']['document_root']}/index.php" do
	source 'index.php.erb'
	mode '0644'
	owner node['awesome_customers']['user']
	group node['awesome_customers']['group']
	variables({
		:database_password => user_password_data_bag_item['password']
	})
end

httpd_module 'php' do
	instance 'customers'
end

package 'php-mysql' do
	action :install
	notifies :restart, 'httpd_service[customers]'
end


