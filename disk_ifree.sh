#/bin/bash
df=`df |grep "/dev/.*/" |awk 'NR==1{print $1}'`
df -i |grep $df |awk '{print $4}'
