https://gitverse.ru/amsamoylov

Запускаем и проверяем состояние etcd
# etcd --version
# systemctl status etcd
# sudo etcdctl member list -w table --endpoints=s04etcd1:2380,s04etcd2:2380,s04etcd3:2380
# sudo etcdctl endpoint status -w table --endpoints=s04etcd1:2380,s04etcd2:2380,s04etcd3:2380

# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 user add root
# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 user get root
# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 auth enable
# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 user get root
# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 --username root user get root







Проверяем конфигурацию. На всех ВМ с PostgreSQL
sudo -u postgres psql -c "psql -c 'SHOW data_directory;'"
systemctl status postgresql
# watch systemctl status patroni

# pg_basebackup -h 10.163.1.37 -p 5432 -U replicator -D /var/lib/postgresql/11/main

# watch sudo patronictl -c /etc/patroni/patroni.yaml list
+ Cluster: postgres-cluster (7481273126891353683) +----+-----------+
| Member     | Host         | Role    | State     | TL | Lag in MB |
+------------+--------------+---------+-----------+----+-----------+
| postgres01 | 10.150.0.111 | Replica | streaming |  1 |         0 |
| postgres02 | 10.150.0.112 | Leader  | running   |  1 |           |
+------------+--------------+---------+-----------+----+-----------+



Тестирование. Создадим тестовую БД
-- Создаем таблицу
CREATE TABLE random_strings (
    id SERIAL PRIMARY KEY,
    random_text TEXT
);

INSERT INTO random_strings (random_text)
SELECT 
    md5(random()::text)
FROM 
    generate_series(1, 10000000);
SELECTt * FROM random_strings;




https://gitverse.ru/amsamoylov/ansible-role-pgbouncer/content/master/tasks/pgbouncer-packages-astralinux.yml