define :nagios_service, :name => "", :hostgroup_name => "", :id => "", :use_existing_command => "", :service_template => "" do
  service = {}

  service['id']                   = params[:id] || params[:name]
  service['hostgroup_name']       = params[:hostgroup_name]
  service['use_existing_command'] = params[:use_existing_command]
  service['service_template']     = params[:service_template]

  node.default['nagios']['dynamic_services'] << service

end