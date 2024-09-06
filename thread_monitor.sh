#!/bin/sh
i=1;
pid=$1;
while(true)
do

`/usr/local/bin/jattach $pid threaddump > /var/log/thread_dumps/$i.txt`;

sleep 5m

i=`expr $i + 1`;

done
