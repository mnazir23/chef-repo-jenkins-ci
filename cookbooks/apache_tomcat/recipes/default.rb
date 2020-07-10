#
# Cookbook:: apache_tomcat
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

execute "update-upgrade" do
    command "sudo apt-get update && sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade"
    action :run
end

package "apache2" do
    action :install
end

service "apache2" do
    action [:enable, :start]
end