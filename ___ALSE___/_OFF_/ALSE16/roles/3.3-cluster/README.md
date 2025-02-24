https://IP_Cluster:2224
логин и пароль см. в /var/main.xml

Настройка iSCSI:
  apt install open-iscsi
  iscsiadm -m discovery -t st -p 10.10.10.10:3260
  iscsiadm -m node -l
  lsblk -S
  /etc/iscsi/nodes/<target>/ip/default
    node.startup = automatic
