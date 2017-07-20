#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Install Apache
package_name = "apache2"
service_name  = "apache2"
document_root = "/var/www"

if node["platform"] == ""
    package_name = "httpd"
    service_name  = "httpd"
    document_root = "/var/www/html"
end
package "apache2" do 
    action :install
end

# Start the service


# Make Sure the Service Starts on Reboot
service "apache2" do
    action [:start, :enable]
end

# Write the homepage
cookbook_file "#{document_root}/index.html" do
    #below line will look into /cookbooks/apache/files/default and looks for index.html
    source "index.html"
    #mode is the permission on the file
    mode "0644"
end
