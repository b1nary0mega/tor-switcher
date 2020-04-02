#!/bin/bash
#Rotate our TOR exit node every 12 minutes, over the next hour (5 x 12 = 60)
for rotCount in {1..6};
do
        printf '\nStaring IP: ';
        curl ifconfig.me
        printf '\nRotation Count %s' $rotCount;
        printf '\n...Resetting IP...\n' && torghost -r >/dev/null && echo 'New IP: ';
        curl ifconfig.me;
        sleep 12m;
done
