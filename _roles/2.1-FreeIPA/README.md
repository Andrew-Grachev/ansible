# Настройка пересылок BIND
# https://wiki.astralinux.ru/kb/freeipa-nastrojka-dns-158609285.html

Добавить зоны DNS, а в них — соответствующие типы записей сетевых ресурсов.
Это можно сделать через графический интерфейс FreeIPA (Сетевые службы — DNS — Зоны DNS) или через CLI:

ipa dnszone-add
ipa dnsrecord-add
Включить лог-файл DNS (по умолчанию отключен):

sudo /usr/sbin/rndc querylog
Для отключения необходимо выполнить команду повторно.

Произвести запрос с другого компьютера. В лог-файле /var/log/syslog появится соответствующая информация. Список корневых серверов находится в файле /etc/bind/db.root.

При перенаправлении запросов убедиться, что в настройках BIND (etc/bind/named.conf.*, ipa-ext.conf и ipa-options-ext.conf) включены рекурсивные запросы и на них правильно настроены списки доступа:

В конфигурационных файлах секция options служит для управления рекурсивными запросами:

Раскрыть
acl "internals" { 192.168.0.0/24; 10.0.0.0/8; 127.0.0.1/32; };
options {
...
recursion no;
allow-recursion { internals; };
...
}

Или c помощью allow-query :

options {
      allow-query { 192.168.0.0/24; localhost; };
};

zone "external.dom" {
      allow-query { any; };
};

zone "0.168.192.in-addr.arpa" {
      allow-query { any; };
};
Для перенаправления запросов в файле /etc/bind/ipa-options-ext.conf:
(Временно) Разрешить рекурсивные запросы всем клиентам на КД FreeIPA:

allow-recursion any; 
allow-query-cache any;

Разрешать рекурсивные запросы всем клиентам нежелательно в целях информационной безопасности (DNS Amplification Attacks).
Если на DNS-сервере, на который производится перенаправление запросов, отключен DNSSEC (по умолчанию на КД MS AD), возможно отключение на перенаправителе:

dnssec-enable no;

Отключение DNSSEC нежелательно в целях информационной безопасности.
Перезагрузить КД FreeIPA:

sudo ipactl restart