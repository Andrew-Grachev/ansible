https://IP_Cluster:2224
логин и пароль см. в /var/passwords.xml

Настройка iSCSI:
  apt install open-iscsi
  iscsiadm -m discovery -t st -p 10.10.10.10:3260
  iscsiadm -m node -l
  lsblk -S
  /etc/iscsi/nodes/<target>/ip/default:
    node.startup = automatic


/etc/exports:
/smbshare/s0 *(rw,insecure,no_subtree_check,all_squash,anonuid=1000,anongid=1000)