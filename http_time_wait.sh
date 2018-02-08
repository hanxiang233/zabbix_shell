#/bin/bash
netstat -antp |grep "80.*TIME_WAIT" |wc -l
