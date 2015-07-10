define :nagios_contactgroup, :name => "", :alias => nil, :members => [], :contactgroup_members => [] do
  contactgroup = {}
  contactgroup['alias'] = params[:alias] || params[:name]
  contactgroup['id'] = params[:name]
  if params[:members].length > 0
	  contactgroup['members'] = params[:members].join(",")
  end
  if params[:contactgroup_members].length > 0
  	contactgroup['contactgroup_members'] = params[:contactgroup_members].join(",") 
  end

  node.default['nagios']['dynamic_contactgroups'] << contactgroup
end