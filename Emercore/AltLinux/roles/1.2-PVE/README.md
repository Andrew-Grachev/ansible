# Вывод узла из кластера
# https://forum.huawei.com/enterprise/ru/%D0%91%D0%B5%D0%B7%D0%B1%D0%BE%D0%BB%D0%B5%D0%B7%D0%BD%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9-%D0%B2%D1%8B%D0%B2%D0%BE%D0%B4-%D0%BD%D0%BE%D0%B4%D1%8B-%D0%B8%D0%B7-%D0%BA%D0%BB%D0%B0%D1%81%D1%82%D0%B5%D1%80%D0%B0-Proxmox/thread/667493325705461760-667481107802763264

Хочу рассказать про проблему подключения новой ноды к кластеру Proxmox через данные присоединения.
Когда вводишь данные для подключения, новый кластер принимает данные и далее останавливается сервис pve-cluster. В ручном режиме не поднимается.
После этого нода становится недоступной, только локальный доступ через KVM.
Решение: удалить вручную все записи кластеризации на ноде, которую хотели присоединить.
Сперва для проверки состояния кластера вводим команду:
 # pvecm status
Вывод
 # pvecm status
Cluster information
~~~~~~~~~~~~~~~~~~~
Name:             prod-main_01
Config Version:   3
Transport:        knet
Secure auth:      on

Quorum information
~~~~~~~~~~~~~~~~~~
Date:             Tue Jun 07 11:06:47 2022
Quorum provider:  corosync_votequorum
Nodes:            4
Node ID:          0x00000001
Ring ID:          1.1a8
Quorate:          Yes

Votequorum information
~~~~~~~~~~~~~~~~~~~~~~
Expected votes:   4
Highest expected: 4
Total votes:      4
Quorum:           3
Flags:            Quorate

Membership information
~~~~~~~~~~~~~~~~~~~~~~
    Nodeid      Votes Name
0x00000001          1 IPXXX
0x00000002          1 IPXXX (local)
0x00000003          1 IPXXX
0x00000004          1 IPXXX

Для просмотра самих нод:
 # pvecm nodes
Membership information
~~~~~~~~~~~~~~~~~~~~~~
    Nodeid      Votes Name
         1          1 node1
         2          1 node2 (local)
         3          1 node3
         4          1 node4

Для удаления узла кластера нужно выключить удаляемую ноду и ввести команду:
 # node2# pvecm delnode node4

Killing node 4

Переместите все виртуальные машины с узла. Убедитесь, что вы сделали копии любых локальных данных или резервных копий, которые хотите сохранить. Кроме того, обязательно удалите все запланированные задания репликации на удаляемый узел. Очень важно отключить узел перед удалением и убедиться, что он не включится снова (в существующей сети кластера) с его текущей конфигурацией. Если вы включите узел как есть, кластер может выйти из строя, и его будет сложно восстановить до рабочего состояния.
Теперь нужно отделить кластер в файле конфигурации corosync.
Во-первых, остановите сервисы corosync и pve-cluster на узле node4:

 # systemctl stop pve-cluster
 # systemctl stop corosync

Запустите файловую систему кластера в локальном режиме:
 # pmxcfs -l

Удалите файлы конфигурации corosync:
 # rm /etc/pve/corosync.conf
 # rm -r /etc/corosync/*

Теперь вы можете снова запустить файловую систему как обычную службу:
 # killall pmxcfs
 # systemctl start pve-cluster

Теперь узел отделен от кластера.