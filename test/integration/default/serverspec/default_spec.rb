require 'serverspec'

set :backend, :exec

describe 'animapp::default' do
  describe 'should have cron added for ipeuser' do
    # describe cron do
    #   it { should have_entry('*/5 * * * * /opt/best/bin/mine-db-for-item-data.sh &> /dev/null').
    #        with_user('ipeuser') }
    # end
  end
  describe 'should have [ipeuser : cron crond] in access.conf' do
    # describe file('/etc/security/access.conf') do
    #   its(:content) { should match /ipeuser : cron crond/ }
    # end
  end
end

