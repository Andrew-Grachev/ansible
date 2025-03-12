#!/bin/bash
systemctl stop autofs
systemctl stop nfs-server
sleep 30
mount -o sync /dev/mapper/vg1-lv1 /mnt/shd1
mount -o sync /dev/mapper/vg2-lv2 /mnt/shd2
sleep 5
systemctl start nfs-server
sleep 5
systemctl start autofs

