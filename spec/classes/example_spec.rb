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
 
          it { is_expected.to contain_class('rspec_monitor::params') }
          it { is_expected.to contain_class('rspec_monitor::install').that_comes_before('rspec_monitor::config') }
          it { is_expected.to contain_class('rspec_monitor::config') }
          it { is_expected.to contain_class('rspec_monitor::service').that_subscribes_to('rspec_monitor::config') }

          it { is_expected.to contain_service('rspec_monitor') }
          it { is_expected.to contain_package('rspec_monitor').with_ensure('present') }

        end
      end
    end
  end
end
