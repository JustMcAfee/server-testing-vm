require_relative 'spec_helper'

describe file('/home/vagrant/docker-apps') do
  it { should be_directory }
end