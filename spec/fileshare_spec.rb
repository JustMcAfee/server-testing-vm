require_relative 'spec_helper'

describe file('/mnt/storage-array/fileshare/') do
  it { should be_directory }
end

describe file('/fileshare') do
  it { should be_linked_to '/mnt/storage-array/fileshare/' }
end

describe file('/home/vagrant/docker-apps') do
  it { should be_directory }
end