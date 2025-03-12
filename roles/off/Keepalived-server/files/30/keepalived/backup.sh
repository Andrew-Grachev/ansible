#!/bin/bash
systemctl stop nfs-server
umount /mnt/shd1
systemctl restart autofs

