template "/etc/hosts" do
  source "hosts.erb"
  owner "root"
  group "root"
  action :create
  mode  "0644"
  variables({"fqdns" => ["api.cinc-server.dev",  "manage.cinc-server.dev"],
             "global_fqdns" => node['provisioning']['hosts']})

end
