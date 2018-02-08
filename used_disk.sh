#/bin/bash
df=`df |grep "/dev/.*/" |awk 'NR==1{print $1}'`
df -h |grep $df |awk '{print $3}' |cut -d G -f 1
