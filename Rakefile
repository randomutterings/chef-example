require 'bundler/setup'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'
desc 'Run Ruby style checks'
Rubocop::RakeTask.new(:ruby_style)

require 'foodcritic'
desc 'Run Chef style checks'
FoodCritic::Rake::LintTask.new(:chef_style)

require 'kitchen'
desc 'Run Test Kitchen integration tests'
task :integration do
  Kitchen.logger = Kitchen.default_file_logger
  Kitchen::Config.new.instances.each do |instance|
    instance.test(:always)
  end
end

task default: %w(spec ruby_style chef_style)

task all: %w(default integration)
