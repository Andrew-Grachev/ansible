# Здесь собраны ansible-роли
## Поддерживаемые версии

| Операционная система | Статус |
| ------------------------- |:---:|
| Alt Linux 10 | :white_check_mark: |
| Astra Linux 1.5 | :ballot_box_with_check: |
| Astra Linux 1.6 | :white_check_mark: |
| Astra Linux 1.7 | :white_check_mark: |
| Astra Linux 1.8 | :ballot_box_with_check: |
| RedOS 8.0 | :white_check_mark: |
| RedOS 7.3 | :ballot_box_with_check: |

- :white_check_mark: - Поддерживается
- :no_entry: - Не подерживается
- :ballot_box_with_check: - Частично работает

## Роли
* ***0.1-Hostname*** - Настройка имени хоста. Дописываем в файл *hosts* все активные хосты из инвентари файла.
* ***0.2-Repo*** - Создание сервера репозитория (HTTP) и поключение клиентов к нему. Если не указан, подключаем внешние (интернет) репозитории.
* ***0.3-Update*** - Обновление ОС, в том числе ядро.
* ***0.4-Networks*** - Настройка сетевых интерфейсов с использованием 'network' или 'NetworkManager'.
* ***0.5-Time*** - Настройка часового пояса, сервера времени (ntp)и подключение к нему клиентов.
* ***0.6-MultiPath*** - Установка multipath и настройка доступных в данный момент дисков
* ***0.9-SSH*** - Обмен ключами пользователей root и 'ansible_user'.

* ***1.1-PXE*** - Создание сервера загрузки PXE. Только UEFI.

* ***2.1-FreeIPA*** - Установка основного контроллера домена FreeIPA и его реплики. Поключение клиентов

* ***3.1-Zabbix*** - Установка сервера и клиентов Zabbix и первичная их настройка
* ***3.3-Xrdp*** - Установка сервера Xrdp и первичная их настройка
* ***3.4-Bacula_ALSE*** -
* ***3.5-Backup*** - Настройка бекапа FreeIPA и PostgreSQL в дисковый ресурс
* ***3.6-Cluster*** - Установка кластера Ppacemaker/Corosync (Apache, Samba, PostgreSQL)
* ***3.8-NFS*** - Установка NFS сервера и первичная настройка
* ***3.10-cups_ALSE*** - 
* ***3.22-Ceph*** - Установка сервера и клиентов Ceph и первичная их настройка
* ***3.27-PostgreSQL*** - Установка кластера PostgreSQL/etcd/Patroni
* ***3.28-Nexus*** - Установка сервера и Nexus (docker)
* ***3.29-K8s*** - Установка Kubernetes кластера

* ***4.1-drweb_ALSE*** - ;
* ***4.2-ksl_ALSE*** - ;

* ***5.1-armabi_ALSE*** - ;
* ***5.2-kpsgp_ALSE*** - ;
* ***5.3-Termidesk_ALSE*** - ;

* ***6.1-GitLab*** - Создание сервера репозиториев GitLab (docker)
* ***6.2-Prometheus*** - Создание сервера Prometheus+Grafana (docker)

* ***8.1-szi_ALSE*** - ;

* ***9.1-GostSum*** - подсчет контрольных сумм ПО на серверах.
* ***9.8-logclear_ALSE*** - ;
* ***9.9-ShutDown*** - Выключение хостов.


pip install -r requirements.txt -v