#
# Cookbook Name:: chef-example
# Recipe:: default
#
# Copyright (C) 2014
#
#
#
include_recipe 'apt'
include_recipe 'nginx::source'
include_recipe 'redis::install_from_package'
