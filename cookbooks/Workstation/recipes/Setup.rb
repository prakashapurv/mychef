#
# Cookbook:: Workstation
# Recipe:: Setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'git'
package 'vim'
package 'tree'
package 'ntp'

########### String Interpolation and File Example
#file '/etc/motd' do
# content "This is my System for chef Environment
# hostname :#{node['hostname']}
# IPAddress :#{node['ipaddress']}
#"
#end

#####Template Example
template '/etc/motd' do
 source 'motd.erb'
 variables(
  :name => 'Apurv'
 )	 
end

service 'ntp' do
action[:start , :enable]
end
