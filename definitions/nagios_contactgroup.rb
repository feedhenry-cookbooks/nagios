define :nagios_contactgroup, :name => "", :alias => nil, :members => [], :contactgroup_members => [] do
  contactgroup = {}
  contactgroup['alias'] = params[:alias] || params[:name]
  contactgroup['id'] = params[:name]
  contactgroup['members'] = params[:members].join(",") unless params[:members].length == 0
  contactgroup['contactgroup_members'] = params[:contactgroup_members].join(",") unless params[:contactgroup_members].length == 0 

  node.default['nagios']['dynamic_contactgroups'] << contactgroup
end