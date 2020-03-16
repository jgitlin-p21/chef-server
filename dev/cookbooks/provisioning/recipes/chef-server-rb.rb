# Note that we do not run reconfigure at this time
# We will allow the dvm recipe to handle when that should occur.
template "/etc/opscode/#{Chef::Dist::SERVER}.rb" do
  source "#{Chef::Dist::SERVER}.rb.erb"
  owner "root"
  group "root"
  action :create
end
