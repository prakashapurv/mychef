#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
/*
node.default['haproxy']['members'] =[
{

"hostname"=> 'web1',
"ipaddress"=>'192.168.10.43',
"port"=>'80',
"ssl_port"=>'80'

},
{
"hostname"=> 'web2',
"ipaddress"=>'192.168.10.44',
"port"=>'80',
"ssl_port"=>'80'

}
]
*/

all_web_nodes = search('node','role:web')
members = []

all_web_nodes.each do |web_nodes|

	member = {
	'hostname' => web_nodes['hostname'],
	'ipaddress' => web_nodes['ipaddress'],
	'port' => 80,
	'ssl_port' =>80
  }
	members.push(member)
end

node.default ['haproxy']['members'] = members

include_recipe "haproxy::manual"
