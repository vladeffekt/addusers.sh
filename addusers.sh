#!/bin/bash

users=`awk '{print $1}' /home/vlad/scripts/home_work/users.txt`

for lusers in $users
do
echo $lusers | xargs -n 1 -p useradd -s /bin/bash -m
done

cat pass.txt | chpasswd

#check
tail -n 3 /etc/passwd #users was create
tail -n 3 /etc/passwd | awk -F: '{print $1}' | xargs -n 1 passwd -S   #password was create
