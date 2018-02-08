systemctl status tomcat |grep "active (running)" |awk '{print $6" "$7}'
