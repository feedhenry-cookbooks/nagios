define :nagios_contact, :name => "", :email => "", :use => "default-contact", :service_notification_period => "24x7", :host_notification_period => "24x7", :service_notification_options => "w,u,c,r", :host_notification_options => "d,r", :service_notification_commands => "service-notify-by-email", :host_notification_commands => "host-notify-by-email" do
  contact = {}
  contact['name'] = params[:name]
  contact['email'] = params[:email]
  contact['id'] =params[:name]
  contact['alias'] = params[:name]
  contact['use'] = params[:use]
  contact['service_notification_period'] = params[:service_notification_period]
  contact['host_notification_period'] = params[:host_notification_period]
  contact['service_notification_options'] = params[:service_notification_options]
  contact['host_notification_options'] = params[:host_notification_options]
  contact['service_notification_commands'] = params[:service_notification_commands]
  contact['host_notification_commands'] = params[:host_notification_commands]

  node.default['nagios']['dynamic_contacts'] << contact
end
