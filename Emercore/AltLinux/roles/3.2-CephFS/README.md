# Web-админка
ceph mgr module disable dashboard
ceph mgr module enable dashboard
sudo ceph config set mgr mgr/dashboard/server_addr 192.168.1.207
sudo ceph config set mgr mgr/dashboard/server_port $PORT
sudo ceph config set mgr mgr/dashboard/ssl_server_port 8443
echo 12345678 > /tmp/pass
sudo ceph dashboard ac-user-create admin administrator -i /tmp/pass
sudo radosgw-admin user create --uid=admin --display-name=admin --system
echo SN5AG0OE3PNWFLI6NAD3 > /tmp/key
sudo ceph dashboard set-rgw-api-access-key -i /tmp/key
echo h7tJuIy3hUCU9yU7FGwcJKJKYLLYQVirmAzmAVsC > /tmp/key2
sudo ceph dashboard set-rgw-api-access-key -i /tmp/key2
sudo ceph dashboard create-self-signed-cert

# rest-api
ceph-deploy install --rgw {{ cephfs.srv | join(' ') }}
ceph-deploy rgwmds create {{ cephfs.srv | join(' ') }}

# Test
watch sudo ceph status
sudo ceph osd df
sudo ceph osd tree
ceph fs ls

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
