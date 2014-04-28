This cookbook uses a variety of testing components:

- Unit tests: [ChefSpec](https://github.com/acrmp/chefspec)
- Integration tests: [Test Kitchen](https://github.com/opscode/test-kitchen)
- Chef Style lints: [Foodcritic](https://github.com/acrmp/foodcritic)
- Ruby Style lints: [Rubocop](https://github.com/bbatsov/rubocop)


Prerequisites
-------------
To develop this cookbook, you must have a sane Ruby 1.9+ environment. Given the nature of this installation process (and it's variance across multiple operating systems), we will leave this installation process to the user.

You must also have `bundler` installed:

    $ gem install bundler

You must also have Vagrant and VirtualBox installed:

- [Vagrant](https://vagrantup.com)
- [VirtualBox](https://virtualbox.org)

Once installed, you must install the `vagrant-berkshelf` plugin:

    $ vagrant plugin install vagrant-berkshelf

If you would prefer to run integration tests on AWS, create a .kitchen.local.yml with the following config.

        ---
        driver:
          name: ec2
          aws_access_key_id: YOUR-AWS-ACCESS-KEY-ID
          aws_secret_access_key: YOUR-AWS-SECRET-ACCESS-KEY
          aws_ssh_key_id: YOUR-AWS-SSH-KEY-ID
          ssh_key: /path/to/YOUR-AWS-SSH-KEY
          region: us-east-1
          availability_zone: us-east-1b
          require_chef_omnibus: true

        platforms:
          - name: ubuntu-12.04
            driver:
              image_id: ami-fd20ad94
              username: ubuntu


Development
-----------
1. Clone the git repository from GitHub:

        $ git clone git@github.com:randomutterings/chef-example.git

2. Install the dependencies using bundler:

        $ bundle install

3. Create a branch for your changes:

        $ git checkout -b my_bug_fix

4. Make any changes
5. Write tests to support those changes. It is highly recommended you write both unit and integration tests.
6. Run the tests:
    - `bundle exec rspec`
    - `bundle exec rubocop`
    - `bundle exec foodcritic .`
    - `bundle exec kitchen test`

    For convenience you can run `rake all` to execute each test suite in order.

7. Assuming the tests pass, open a Pull Request on GitHub
