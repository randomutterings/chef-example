Example Chef Cookbook
================

Installs redis (from package) and nginx (from source) with the stub status module.


Requirements
------------
### Platform
- Debian/Ubuntu


Usage
-----
Ensure that the packages are installed and the services are managed with `recipe[chef-example]`.

To provision and converge an ec2 instance, run the following command.  The image used in this example is Ubuntu 12.04 LTS.

    knife ec2 server create \
    --ssh-user ubuntu \
    --aws-access-key-id YOUR-AWS-ACCESS-KEY-ID \
    --aws-secret-access-key YOUR-AWS-SECRET-ACCESS-KEY \
    --ssh-key YOUR-AWS-SSH-KEY-ID \
    --identity-file /path/to/YOUR-AWS-SSH-KEY \
    --node-name chef-example \
    --run-list "recipe[chef-example]" \
    --flavor t1.micro \
    --image ami-fd20ad94 \
    --region us-east-1 \
    --distro chef-full


Resources
-----
- [Nginx Cookbook](https://github.com/opscode-cookbooks/nginx)
- [Redis Cookbook](http://community.opscode.com/cookbooks/redis)
- [knife config](http://docs.opscode.com/config_rb_knife.html)
- [knife-ec2](http://docs.opscode.com/plugin_knife_ec2.html)


Author
-----
- Chris Barnes <randomutterings@gmail.com>
