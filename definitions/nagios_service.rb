define :nagios_service, :name => "", :hostgroup_name => "", :id => nil, :contact_groups => nil, :contacts => nil, :use_existing_command => "", :service_template => nil, :notes => "No notes" do
  service = {}

  service['id']                   = params[:id] || params[:name]
  service['hostgroup_name']       = params[:hostgroup_name]
  service['use_existing_command'] = params[:use_existing_command]
  service['service_template']     = params[:service_template]
  service['contacts']             = params[:contacts].join(",") unless params[:contacts].nil?
  service['contact_groups']       = params[:contact_groups].join(",") unless params[:contact_groups].nil?
  service['notes']                = params[:notes]

  node.default['nagios']['dynamic_services'] << service

end