#/bin/bash
df=`df |grep "/dev/.*/" |awk 'NR==1{print $1}'`
df -i |grep $df |awk -F"%" '{print $1}' |awk '{print $5}'
