#!/bin/bash
systemctl stop autofs
systemctl stop nfs-server
umount /mnt/shd/shd1
umount /mnt/shd/shd2


