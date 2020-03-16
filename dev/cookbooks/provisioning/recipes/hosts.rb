template "/etc/hosts" do
  source "hosts.erb"
  owner "root"
  group "root"
  action :create
  mode  "0644"
  variables({"fqdns" => ["api.#{Chef::Dist::SERVER}.dev",  "manage.#{Chef::Dist::SERVER}.dev"],
             "global_fqdns" => node['provisioning']['hosts']})

end
