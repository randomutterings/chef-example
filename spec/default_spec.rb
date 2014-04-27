require 'spec_helper'

describe 'chef-example::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs nginx from source' do
    expect(chef_run).to include_recipe('nginx::source')
  end

  it 'installs redis' do
    expect(chef_run).to install_package('redis-server')
  end
end
