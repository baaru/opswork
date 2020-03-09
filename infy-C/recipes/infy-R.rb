#
# Cookbook:: infy-C
# Recipe:: infy-R
#
# Copyright:: 2020, The Authors, All Rights Reserved.
file "/1086304-file" do
  content "Welcome to chef automation"
  action :create
end
package "httpd" do
  action :install
end
service "httpd" do
  action [ :enable, :start ]
end
package "tree" do
  action :install
end

