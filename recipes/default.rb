#
# Cookbook Name:: helloworld
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apache2::default'

app_dir = "#{node['helloworld']['root_dir']}/helloworld"

directory app_dir do
  action :create
  recursive true
end

file "#{app_dir}/index.html" do
  content 'Hello World'
  action :create
end

web_app 'helloworld' do
  cookbook 'apache2'
  server_name node['hostname']
  server_aliases [node['fqdn']]
  docroot app_dir
end
