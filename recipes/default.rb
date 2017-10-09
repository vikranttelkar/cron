#
# Cookbook Name:: cron
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cron "cronjob" do
  minute "*/5"
  command "echo 'Hello World' > /tmp/logs"
  mailto "yahoo@gmail.com"
  user "root"
end

#Installed httpd, restart service and updated index.html file. 
package "httpd"

service "httpd" do
  action :restart
end

file '/var/www/html/index.html' do
  content "Hello to world from Aarya"
  mode '0644'
  owner 'root'
  group 'root'
end

execute 'update_packages' do
 command 'yum update all -y'
end
