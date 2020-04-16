# Omnibus External PostgreSQL

This directory contains the Terraform code used to instantiate an external
PostgreSQL Server followed by a CINC Infra Server utilizing an Omnibus
built artifact downloaded from `$upgrade_version_url` as the install package.

The CINC Infra Server will receive a `/etc/opscode/cinc-server.rb`
configuration file that is setup to use the external PostgreSQL server with
ssl=off by default.

Once both servers are installed and configured, the pedant tests are run
against the CINC Infra Server.
