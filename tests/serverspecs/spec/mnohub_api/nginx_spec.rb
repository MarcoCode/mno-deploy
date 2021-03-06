require 'spec_helper'

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/nginx/sites-enabled/mnohub') do
  it { should contain 'location @mnohub' }
  it { should contain 'proxy_pass http://127.0.0.1:3000;' }
end
