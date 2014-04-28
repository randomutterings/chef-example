Example Chef Cookbook
================
[![Build Status](https://travis-ci.org/randomutterings/chef-example.svg?branch=master)](http://travis-ci.org/randomutterings/chef-example)

This example cookbook installs redis (from package) and nginx (from source) with the stub status module.  Support for provisioning an AWS instance is provided thorugh the knife-ec2 plugin.


Supported Platforms
-------------------
- Debian/Ubuntu

Prerequisites
-------------
To use this cookbook to provision an AWS instance, you must have the following installed and configured.

- Ruby 1.9+
- Bundler
- Chef Server
- Chef Workstation


Usage
-----
1. Clone the git repository from GitHub:

        $ git clone git@github.com:randomutterings/chef-example.git

2. Install the dependencies using bundler:

        $ cd chef-example && bundle install

3. Upload the required cookbooks to your chef server.

        $ berks upload

4. Provision and converge an ec2 instance.

        $ knife ec2 server create \
        --ssh-user ubuntu \
        --aws-access-key-id YOUR-AWS-ACCESS-KEY-ID \
        --aws-secret-access-key YOUR-AWS-SECRET-ACCESS-KEY \
        --ssh-key YOUR-AWS-SSH-KEY-ID \
        --identity-file /path/to/YOUR-AWS-SSH-KEY \
        --run-list "recipe[chef-example]" \
        --flavor t1.micro \
        --image ami-fd20ad94 \
        --region us-east-1 \
        --distro chef-full

  The image used in this example is Ubuntu 12.04 LTS.

Resources
---------
- [nginx cookbook](https://github.com/opscode-cookbooks/nginx)
- [redis cookbook](http://community.opscode.com/cookbooks/redis)
- [knife config](http://docs.opscode.com/config_rb_knife.html)
- [knife-ec2](http://docs.opscode.com/plugin_knife_ec2.html)
- [berkshelf](http://berkshelf.com)

Author
------
- Chris Barnes <randomutterings@gmail.com>
