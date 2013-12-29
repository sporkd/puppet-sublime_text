require 'spec_helper'

describe 'sublime_text' do
  let(:facts) { {:boxen_user => 'testuser'} }
  let(:sublimedir) { "/Users/#{facts[:boxen_user]}/Library/Application Support/Sublime Text 3" }
  let(:packagedir) { "#{sublimedir}/Packages" }

  it { should contain_file(sublimedir).with_ensure('directory') }
  it { should contain_file(packagedir).with_ensure('directory') }

  it do
    should contain_package('Sublime Text').with({
      :provider => 'appdmg',
      :source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg'
    })
  end
end
