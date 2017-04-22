require_relative 'spec_helper'

describe user('testuser') do
  it { should exist }
  it { should belong_to_primary_group 'testuser' }
  it { should belong_to_group 'household-access' }
  it { should belong_to_group 'media-access' }
end