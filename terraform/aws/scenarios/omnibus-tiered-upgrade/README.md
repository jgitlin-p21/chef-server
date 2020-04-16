# Omnibus Tiered Upgrade

This directory contains the Terraform code used to instantiate a "back-end" CINC Infra Server followed by a "front-end" CINC Infra Server utilizing an Omnibus built artifact downloaded from `$install_version_url`.

Both servers receive a `/etc/opscode/cinc-server.rb` configuration file that is setup with the "tier" topology.

Once both servers are installed and configured the servers are then upgraded using the artifact downloaded from `$upgrade_version_url` before the pedant tests are run against the front-end.
