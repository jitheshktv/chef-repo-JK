require 'spec_helper'

describe 'apache' do
  it 'displays a custom page' do
    expect(command('curl localhost').stdout).to match /Hello/
  end

  it 'port 80 is listening' do
	expect(port 80).to be_listening
  end
end
