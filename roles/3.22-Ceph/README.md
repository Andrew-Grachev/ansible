# Создание LVM
apt install lvm2 -y
dnf install lvm2 -y
vgcreate vg2 /dev/sdb
lvcreate -l 100%FREE -n lv_cephosd vg2

# rest-api
ceph-deploy install --rgw {{ ceph.nodes | join(' ') }}
ceph-deploy rgwmds create {{ ceph.nodes | join(' ') }}

# Test
sudo ceph ntp all
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



# Удаление разметки Ceph в случае повторного инсталлирования
sudo ceph-volume lvm zap /dev/vg2/lv_cephosd
# Удаление Ceph
systemctl stop ceph-*.service ceph-*.target
dnf remove ceph ceph-radosgw ceph-mds ceph-mgr ceph-osd ceph-common ceph-fuse -y
rm -rf /etc/ceph/ /var/lib/ceph/ /var/log/ceph/ /home/{{ ansible_ssh_user }}/ceph*
rm -rf /usr/lib/systemd/system/ceph* /usr/bin/ceph* /usr/sbin/ceph* /etc/sysconfig/ceph

...