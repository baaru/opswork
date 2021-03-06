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
file '/robofile' do
  content "This is to get Attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end
