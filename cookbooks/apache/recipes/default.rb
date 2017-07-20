#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Install Apache
package "apache2" do 
    action :install
end

# Start the service


# Make Sure the Service Starts on Reboot
service "apache2" do
    action [:start, :enable]
end

# Write the homepage
cookbook_file "/var/www/index.html" do
    #below line will look into /cookbooks/apache/files/default and looks for index.html
    source "index.html"
    #mode is the permission on the file
    mode "0644"
end

