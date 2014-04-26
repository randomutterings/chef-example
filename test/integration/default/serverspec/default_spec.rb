require 'spec_helper'

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

# nginx status module defaults to port 8090
describe port(8090) do
  it { should be_listening }
end
