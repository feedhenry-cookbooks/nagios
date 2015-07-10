define :nagios_contactgroup, :name => "", :alias => nil, :members => [], :contactgroup_members => [] do
  contactgroup = {}
  contactgroup['alias'] = params[:alias] || params[:name]
  contactgroup['id'] = params[:name]
  contactgroup['members'] = params[:members].join(",")
  contactgroup['contactgroup_members'] = params[:contactgroup_members].join(",")

  node.default['nagios']['dynamic_contactgroups'] << contactgroup
end