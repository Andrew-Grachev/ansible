#!/bin/bash
systemctl stop autofs
systemctl stop nfs-server
sleep 30
mount /dev/mapper/shd1 /mnt/shd1
sleep 5
systemctl restart nfs-server
sleep 5
systemctl restart autofs

