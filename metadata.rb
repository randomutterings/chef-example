name             'chef-example'
maintainer       'Chris Barnes'
maintainer_email 'randomutterings@gmail.com'
license          'GPL'
description      'Installs/Configures nginx, and redis'
long_description 'Installs/Configures nginx from source with the status module and redis'
version          '0.1.0'
depends          'apt'
depends          'nginx', '~> 2.6.2'
depends          'redis', '~> 3.0.4'
