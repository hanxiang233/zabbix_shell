#/bin/bash
df=`df |grep "/dev/.*/" |awk 'NR==1{print $1}'`
df -h |grep "$df" |awk -F " " '{print $5}' |awk -F "%" '{print $1}'
