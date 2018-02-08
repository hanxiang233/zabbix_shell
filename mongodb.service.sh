systemctl status mongod |grep "active (running)" |awk '{print $6" "$7}'
