require 'spec_helper_acceptance'

describe 'rspec_monitor class' do

  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      class { 'rspec_monitor': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end


    # default module tests
    describe package('serverspec') do
      it { is_expected.to be_installed.by('gem') }
    end

    describe package('rspec-nagios-formatter') do
      it { is_expected.to be_installed.by('gem') }
    end

  end
end
