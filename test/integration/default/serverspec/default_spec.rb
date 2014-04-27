require 'spec_helper'

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

# nginx listens on port 80
describe port(80) do
  it { should be_listening }
end

# nginx status module listens on port 8090
describe port(8090) do
  it { should be_listening }
end

# redis listens on port 6379
describe port(6379) do
  it { should be_listening }
end
