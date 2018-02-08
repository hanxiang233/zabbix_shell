#/bin/bash
sar -n DEV 1 1  |grep "eth1" |awk 'NR==1 {print $6}'
