#!/bin/bash
systemctl stop autofs
systemctl stop nfs-server
umount /mnt/shd1
