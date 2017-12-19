require 'rake'
require 'rspec/core/rake_task'

hosts = %w(
  centos6
  xenial64
)

task :spec => 'spec:all'
task :default => :spec

namespace :spec do
  task :all => hosts.map {|h| 'spec:' + h }
  hosts.each do |host|
    desc "Run serverspec to #{host}"
    RSpec::Core::RakeTask.new(host) do |t|
      ENV['TARGET_HOST'] = host
      t.pattern = "spec/default/*_spec.rb"
    end
    RSpec::Core::RakeTask.new(host) do |t|
      ENV['TARGET_HOST'] = host
      t.pattern = "spec/spec_cleanup.rb"
    end
  end
end
