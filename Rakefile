require 'bundler/setup'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'kitchen'
desc 'Run Test Kitchen integration tests'
task :integration do
  Kitchen.logger = Kitchen.default_file_logger
  Kitchen::Config.new.instances.each do |instance|
    instance.test(:always)
  end
end

task default: ['spec', 'integration']
