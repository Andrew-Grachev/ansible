# Настройка аутентификации Kerberos для службы apache2 в Astra Linux 1.5

Устанавливаем пакеты:
  sudo apt install apache2
  sudo apt install libapache2-mod-auth-kerb

## Правим конфигурационный файл /etc/apache2/sites-available/auth-kerberos.conf
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    <Directory /var/www/html/>
        AuthType Kerberos
        # Имя области (realm) Керберос - имя домена ЗАГЛАВНЫМИ буквами
        KrbAuthRealms EXAMPLE.RU
        # Имя доменной службы, предоставляемой сервером
        KrbServiceName HTTP/astra15-ald.example.ru
        # Имя файла, в котором сохранены ключи доменной службы
        Krb5Keytab /etc/apache2/keytab
        KrbMethodNegotiate on
        KrbMethodK5Passwd off
        require valid-user
        KrbSaveCredentials on
    </Directory>
</VirtualHost>

## На контроллере домена выполнить команды
'ald-admin service-add HTTP/astra15-ald.example.ru
'ald-admin sgroup-svc-add HTTP/astra15-ald.example.ru --sgroup=mac

## На web-сервере выполнить команды
'keytab="/etc/apache2/keytab"
'ald-client update-svc-keytab HTTP/`hostname` --ktfile="$keytab"
'chown www-data "$keytab"
'chmod 644 "$keytab"

## Перезапустить службу apache2
'sudo service apache2 restart

## Проверка работы аутентификации
curl http://`hostname`/


