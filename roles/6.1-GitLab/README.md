Установите OpenSSL
Создайте приватный ключ
openssl genpkey -algorithm RSA -out gitlab.key -aes256
Создайте запрос на подпись сертификата (CSR)
openssl req -new -key gitlab.key -out gitlab.csr
Создайте самоподписанный сертификат
openssl x509 -req -days 3650 -in gitlab.csr -signkey gitlab.key -out gitlab.crt
Уберите пароль с приватного ключа (если это необходимо для GitLab)
openssl rsa -in gitlab.key -out gitlab.key
Скопируйте файлы gitlab.crt и gitlab.key на сервер GitLab в директорию, например, /etc/gitlab/ssl/
Откройте конфигурационный файл GitLab /etc/gitlab/gitlab.rb
Добавьте или измените следующие строки
nginx['ssl_certificate'] = "/etc/gitlab/ssl/gitlab.crt"
nginx['ssl_certificate_key'] = "/etc/gitlab/ssl/gitlab.key"
Примените изменения
docker exec -it gitlab /bin/bash
> gitlab-ctl reconfigure

Скопируйте файл gitlab.crt





