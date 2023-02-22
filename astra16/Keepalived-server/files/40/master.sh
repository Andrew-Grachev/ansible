#!/bin/bash
systemctl stop autofs
systemctl stop nfs-server
systemctl stop samba

sleep 30
mount -o sync /dev/mapper/shd0 /mnt/shd/vol1
mount -o sync /dev/mapper/shd1 /mnt/shd/vol2
mount -o sync /dev/mapper/shd2 /mnt/shd/vol3
mount -o sync /dev/mapper/shd3 /mnt/shd/vol4
mount -o sync /dev/mapper/shd4 /mnt/shd/vol5
mount -o sync /dev/mapper/shd5 /mnt/shd/vol6
mount -o sync /dev/mapper/shd6 /mnt/shd/vol7
mount -o sync /dev/mapper/shd7 /mnt/shd/vol8
mount -o sync /dev/mapper/shd8 /mnt/shd/vol9
mount -o sync /dev/mapper/shd9 /mnt/shd/vol10
mount -o sync /dev/mapper/shd10 /mnt/shd/vol11
mount -o sync /dev/mapper/shd11 /mnt/shd/vol12
mount -o sync /dev/mapper/shd12 /mnt/shd/vol13
mount -o sync /dev/mapper/shd13 /mnt/shd/vol14

sleep 5
systemctl restart nfs-server
systemctl restart samba
sleep 5
systemctl restart autofs
