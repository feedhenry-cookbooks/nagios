define :nagios_host, :name => "", :ip => "", :os => "dynamic_host", :hostgroups => [], :contact_groups => [] do
  host = {}
  host['name'] = params[:name]
  host[node['nagios']['host_name_attribute']] = params[:name]
  host['ipaddress'] = params[:ip]
  host['roles'] = params[:hostgroups]
  host['contact_groups'] = params[:contact_groups]
  host['os'] = params[:os]

  node.default['nagios']['dynamic_hosts'] << host
end
