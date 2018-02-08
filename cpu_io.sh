#/bin/bash
sar -u 1 1 |grep "PM\|AM" |awk 'NR==2 {print $7}'
