# sudo dnf info ceph*
# sudo dnf -y install --best ceph


# Web-админка
ceph mgr module disable dashboard
ceph mgr module enable dashboard
ceph config set mgr mgr/dashboard/server_addr 10.150.0.104
ceph config set mgr mgr/dashboard/server_port 8080
ceph config set mgr mgr/dashboard/ssl false

sudo ceph config set mgr mgr/dashboard/ssl_server_port 8443
echo 12345678 > /tmp/pass
sudo ceph dashboard ac-user-create admin administrator -i /tmp/pass
sudo radosgw-admin user create --uid=admin --display-name=admin --system
"access_key": "DXC5TUKHV8XAI0A5MZEN",
"secret_key": "Sg62G7zFt7oIsvxKIOOCuUumPK9L9KAZVhCxsaCe"
echo DXC5TUKHV8XAI0A5MZEN > /tmp/key
sudo ceph dashboard set-rgw-api-access-key -i /tmp/key
echo Sg62G7zFt7oIsvxKIOOCuUumPK9L9KAZVhCxsaCe > /tmp/key2
sudo ceph dashboard set-rgw-api-access-key -i /tmp/key2
sudo ceph dashboard create-self-signed-cert

# rest-api
ceph-deploy install --rgw {{ ceph.nodes | join(' ') }}
ceph-deploy rgwmds create {{ ceph.nodes | join(' ') }}

# Test
sudo ceph versions
watch sudo ceph status
watch sudo ceph osd df
watch sudo ceph osd tree
sudo ceph fs ls
watch sudo ceph mds stat


# Mount
sudo apt-get install ceph-fuse
sudo md /mnt/cephfs
sudo ceph-fuse -n client.admin --keyring=/etc/ceph/ceph.client.admin.keyring /mnt/cephfs
sudo mount | grep ceph-fuse


#!/bin/sh
# Определение папки для записи
target_dir="/mnt/cephfs"
# Функция для создания случайного файла
generate_random_file() {
  local filename="$1"
  local filesize="$2"
  # Генерация случайных данных в файл
  dd if=/dev/urandom bs=1 count="$filesize" > "$filename"
}
# Цикл для создания нескольких файлов
for i in {1..10000}; do
  # Генерация случайного имени файла
  filename=$(uuidgen)
  # Генерация случайного размера файла (от 1 до 10 КБ)
  filesize=$((RANDOM % 10000000 + 1))
  # Создание файла
  generate_random_file "$target_dir/$filename" "$filesize"
  # Вывод информации о созданном файле
  echo "Создан файл: $target_dir/$filename, размер: $filesize байт"
done

