# docker compose - Zabbix NGINX PostgreSQL + Grafana

- [Official Zabbix Dockerfiles](https://github.com/zabbix/zabbix-docker)
- [Zabbix plugin for Grafana dashboard](https://github.com/grafana/grafana-zabbix)

Example simple docker-compose service
- **Postgresql:**                16-alpine
- **Zabbix Server:**             7.2.1
- **Zabbix Frontend NGINX:**     7.2.1
- **Zabbix Agent:**              7.2.1
- **Grafana:**                   11.4.0

## Guide


### Run docker-compose:
```
docker-compose up -d
```

The first launch takes 1-2 minutes

### Zabbix `localhost:8080`
default user password 
- **login:** Admin
- **password:** zabbix


**Zabbix server** - Host / change use connect from DNS `zabbix-agent`
![zabbix-agent](./.images/zabbix-agent-settings.png)

### Grafana `localhost:3000` 

default user password (change `grafana/grafana.ini` auth.anonymous enabled)
- **login:** admin
- **password:** 12345

Test data source

`Grafana -> Connections -> Data sources -> zabbix -> Test`
![zabbix-agent](./.images/data-source-test.png)

### Debug
```
docker-compose logs --tail=1 -f
```
