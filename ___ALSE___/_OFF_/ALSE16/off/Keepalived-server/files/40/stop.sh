#!/bin/bash
systemctl stop autofs
systemctl stop nfs-server
systemctl stop samba

umount /mnt/shd/vol1
umount /mnt/shd/vol2
umount /mnt/shd/vol3
umount /mnt/shd/vol4
umount /mnt/shd/vol5
umount /mnt/shd/vol6
umount /mnt/shd/vol7
umount /mnt/shd/vol8
umount /mnt/shd/vol9
umount /mnt/shd/vol10
umount /mnt/shd/vol11
umount /mnt/shd/vol12
umount /mnt/shd/vol13
umount /mnt/shd/vol14
