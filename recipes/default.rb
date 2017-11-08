httpd_service 'default' do
  action [:create, :start]
end

httpd_config 'default' do
  notifies :restart, 'httpd_service[default]'
  action :create
end
