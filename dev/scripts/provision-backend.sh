cat > /etc/chef-backend/chef-backend.rb <<EOF
publish_address "#{IPS[:be]}"
EOF
chef-backend-ctl create-cluster --accept-license
chef-backend-ctl gen-server-config api.cinc-server.dev > /installers/api.cinc-server.dev.rb
