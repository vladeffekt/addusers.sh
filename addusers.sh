#!/bin/bash

users=`awk '{print $1}' $1

for lusers in $users
do
echo $lusers | xargs -n 1 -p useradd -s /bin/bash -m
done

cat $1 | chpasswd

#check
tail -n 3 /etc/passwd #users was create
tail -n 3 /etc/passwd | awk -F: '{print $1}' | xargs -n 1 passwd -S   #password was create
