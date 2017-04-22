require_relative 'spec_helper'

describe file('/mnt/storage-array/fileshare/') do
  it { should be_directory }
end

describe file('/fileshare') do
  it { should be_linked_to '/mnt/storage-array/fileshare/' }
end

describe file('/fileshare/media') do
  it { should be_directory }
  it { should be_mode 770 }
  it { should be_grouped_into 'media-access' }
end

describe file('/fileshare/household') do
  it { should be_directory }
  it { should be_mode 770 }
  it { should be_grouped_into 'household-access' }
end

describe file('/fileshare/testuser') do
  it { should be_directory }
  it { should be_mode 770 }
  it { should be_grouped_into 'testuser' }
end