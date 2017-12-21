require 'spec_helper'

describe package('kibana') do
  it { should be_installed }
end

describe service('kibana') do
  it { should be_enabled.with_level(5) }
  it { should be_running }
end

describe user('kibana') do
  it { should exist }
end

describe file('/etc/kibana') do
  it { should be_directory }
end

describe file('/etc/kibana/kibana.yml') do
  it { should be_file }
end

describe file('/etc/init.d/kibana') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_executable.by('owner') }
  it { should be_executable.by('group') }
  it { should be_executable.by('others') }
  it { should be_executable.by_user('kibana') }
end

describe file('/usr/share/kibana') do
  it { should be_directory }
end

describe port(5601) do
  it { should be_listening }
end
