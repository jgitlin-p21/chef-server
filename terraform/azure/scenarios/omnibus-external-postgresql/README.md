# Omnibus External PostgreSQL

This directory contains the Terraform code used to instantiate an Azure PostgreSQL database followed by a CINC Infra Server utilizing an Omnibus built artifact downloaded from `$upgrade_version_url` as the install package.

The CINC Infra Server will receive a `/etc/opscode/cinc-server.rb` configuration file that is setup to use the external database server over SSL.

Once both servers are installed and configured, the pedant tests are run against the CINC Infra Server.
