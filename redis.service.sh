systemctl status redis |grep "active (running)" |awk '{print $6" "$7}'

