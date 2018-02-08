systemctl status mysqld |grep "active (running)" |awk '{print $6" "$7}'

