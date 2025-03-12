https://gitverse.ru/amsamoylov

Запускаем и проверяем состояние etcd
# etcd --version
# systemctl status etcd
# etcdctl --write-out=table --endpoints=1etcd01:2380,1etcd02:2380,2etcd03:2380 endpoint status
# etcdctl --write-out=table --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 endpoint status

# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 user add root
# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 user get root
# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 auth enable
# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 user get root
# etcdctl --endpoints=1etcd01:2380,1postgres01:2380,2postgres02:2380 --username root user get root

Проверяем конфигурацию. На всех ВМ с PostgreSQL
sudo -u postgres psql -c "psql -c 'SHOW data_directory;'"


systemctl status postgresql
# watch systemctl status patroni
patroni --validate-config /etc/patroni.yaml
patronictl -c /etc/patroni.yaml list

# pg_basebackup -h 10.163.1.37 -p 5432 -U replicator -D /var/lib/postgresql/11/main
   

patroni --validate-config /etc/patroni.yaml

patronictl -c /etc/patroni.yaml create etcd



-- Создаем таблицу
CREATE TABLE random_strings (
    id SERIAL PRIMARY KEY,
    random_text TEXT
);

INSERT INTO random_strings (random_text)
SELECT 
    md5(random()::text)
FROM 
    generate_series(1, 100000000);


SELECTt * FROM random_strings;




https://gitverse.ru/amsamoylov/ansible-role-pgbouncer/content/master/tasks/pgbouncer-packages-astralinux.yml