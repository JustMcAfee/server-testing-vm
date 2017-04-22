require_relative 'spec_helper'

describe file('/etc/smartd.conf') do
  it { should be_file }
  it { should contain '-m JustMcAfee@users.noreply.github.com' }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/usr/local/bin/smartdnotify') do
  it { should be_file }
  it { should contain 'echo "$SMARTD_MESSAGE" | mail -s "$SMARTD_FAILTYPE" "$SMARTD_ADDRESS"' }
  it { should be_mode 755 }
  it { should be_executable }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end