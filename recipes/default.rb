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
  mailto "vikrant.telkar@gmail.com"
  user "ubuntu"
end
