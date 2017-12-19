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
