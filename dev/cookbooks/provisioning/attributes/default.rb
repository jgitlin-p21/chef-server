
default['provisioning']["#{Chef::Dist::SERVER}-config"] = {}

default['ldap']['basedn']   = "dc=#{Chef::Dist::SERVER},dc=dev"
default['ldap']['ssl_key']  = "/etc/ldap/ssl/#{Chef::Dist::SERVER}_dev.key"
default['ldap']['ssl_cert'] = "/etc/ldap/ssl/#{Chef::Dist::SERVER}_dev.crt"
default['ldap']['password']   = 'H0\/\/!|\/|3tY0ur|\/|0th3r'