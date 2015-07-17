define :nagios_contactgroup, :name => "", :alias => nil, :members => nil, :contactgroup_members => nil do
  contactgroup = {}
  contactgroup['alias'] = params[:alias] || params[:name]
  contactgroup['id'] = params[:name]
  contactgroup['members'] = params[:members].join(",") unless params[:members].nil?
  contactgroup['contactgroup_members'] = params[:contactgroup_members].join(",") unless params[:contactgroup_members].nil?

  node.default['nagios']['dynamic_contactgroups'] << contactgroup
end