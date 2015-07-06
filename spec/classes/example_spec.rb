require 'spec_helper'

describe 'rspec_monitor' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "rspec_monitor class without any parameters" do
          let(:params) {{ }}

          it { is_expected.to compile.with_all_deps }
 
          it { is_expected.to contain_class('rspec_monitor') }
          it { is_expected.to contain_package('rspec-nagios-formatter').with_provider('gem') }
          it { is_expected.to contain_package('serverspec').with_provider('gem') }
          it { is_expected.to contain_file('/usr/local/rspec_tests/spec').with_ensure('directory') }
          it { is_expected.to contain_file('/usr/local/rspec_tests').with_ensure('directory') }
        end
      end
    end
  end
end
