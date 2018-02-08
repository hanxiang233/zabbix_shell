systemctl status httpd |grep "active (running)" |awk '{print $6" "$7}'

