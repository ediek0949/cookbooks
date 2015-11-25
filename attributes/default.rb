node.default[:animapp][:security_loc] = '/etc/security'
node.default[:animapp][:command] = '/opt/best/bin/mine-db-for-item-data.sh &> /dev/null'
node.default[:animapp][:user] = 'ipeuser'