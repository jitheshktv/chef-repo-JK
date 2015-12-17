require 'spec_helper'

describe 'If the customers website is running' do
  it 'is it up and running' do
    expect(command('curl localhost').stdout).to match '<title>customers</title>'
  end
end

describe 'webadmin user' do
  it 'user webadmin has the /home/web_admin home directory' do
    expect(user 'web_admin').to have_home_directory '/home/web_admin'
  end

  it 'user webadmin has shell /bin/bash' do
    expect(user 'web_admin').to have_login_shell '/bin/bash'
  end
end

describe 'default home page' do
  let(:index) {'/var/www/customers/public_html/index.php'}
  it 'it is owned by web_admin' do
    expect(file index).to be_owned_by 'web_admin'
    expect(file index).to be_grouped_into 'web_admin'
  end
end

describe 'httpd-customers service' do
  it 'httpd-customers service is enabled' do
    expect(service 'httpd-customers').to be_enabled
  end

  it 'httpd-customers running' do
    expect(service 'httpd-customers').to be_running
  end
end

describe 'default home page' do
  let(:index) {'/var/www/customers/public_html/index.php'}
  it 'exists' do
    expect(file index).to exist
  end
  it 'is a file' do
    expect(file index).to be_file
  end
  it 'has mode 0644' do
    expect(file index).to be_mode 644
  end
end
