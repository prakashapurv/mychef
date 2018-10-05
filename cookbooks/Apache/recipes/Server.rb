# Cookbook:: Apache
# Recipe:: Server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'apache2' do
 action :install
end

file '/var/www/html/index.html' do
 content'Welcome To the Chef Environemnt'
end

service 'apache2' do
 action [ :enable , :start ]
end

service 'apache2' do
	subscribes :restart ,'file[/var/www/html/index.html]' , :immediately
end
