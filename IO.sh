#/bin/sh
Device=$1
DISK=$2
case $DISK in
         rrqm)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b"|tail -1|awk '{print $2}'
            ;;
         wrqm)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b"|tail -1|awk '{print $5}'
            ;;
          rps)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b"|tail -1|awk '{print $4}'
            ;;
          wps)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b" |tail -1|awk '{print $5}'
            ;;
        rKBps)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b" |tail -1|awk '{print $6}'
            ;;
        wKBps)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b" |tail -1|awk '{print $7}'
            ;;
        avgrq-sz)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b" |tail -1|awk '{print $8}'
            ;;
        avgqu-sz)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b" |tail -1|awk '{print $9}'
            ;;
        await)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b" |tail -1|awk '{print $10}'
            ;;
        svctm)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b" |tail -1|awk '{print $11}'
            ;;
         util)
            iostat -d -x -k 1 5 |grep vda |awk NR==5 |grep "\b$Device\b" |tail -1|awk '{print $12}'
            ;;
esac

