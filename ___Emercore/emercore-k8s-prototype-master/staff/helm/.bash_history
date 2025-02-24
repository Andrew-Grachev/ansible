grep -i 'tty' /var/log/dmesg
grep -i 'tty' dmesg
dmesg |grep -i 'tty'
sudo dmesg |grep -i 'tty'
sudo nano /etc/init/ttyS0.conf
sudo start ttyS0
sudo nano /etc/init/ttyS0.conf 
sudo start ttyS0
sudo reboot 
apt update 
sudo apt update 
sudo apt install qemu-guest-agent 
nano /etc/network/interfaces
ip a
sudo nano /etc/network/interfaces
sudo ifup eth0 
ip a
sudo systemctl enable ssh
sudo nano /etc/default/grub
sudo update-grub
sudo reboot 
sudo nano /etc/resolv.conf
apt update 
sudo apt update 
sudo apt install qemu-guest-agent 
sudo shutdown -h now
ва -р
df -h
sudo pvs
sudo lvresize /dev/vg0/var -rL10G
df -h
sudo fdisk -l
sudo fdisk /dev/sda
sudo pvs
sudo pvresize /dev/sda2
sudo pvs
sudo lvresize /dev/vg0/var -rL20G
sudo lvresize /dev/vg0/root -rL10G
sudo pvs
sudo vgs
sudo lvs
htop
sudo apt install htop
htop
sudo shutdown -h now
ip a
nano /etc/network/interfaces
sudo nano /etc/network/interfaces
sudo reboot 
htop
kubectl get pods -A
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
mkdir -p $HOME/.kube
kubectl get pods -A
watch kubectl get pods -A
sudo hostnamectl set-hostname master01
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
watch kubectl get pods -A
sudo ceph -s
wget https://get.helm.sh/helm-v3.11.3-linux-amd64.tar.gz
apt install wget
sudo apt install wget
wget https://get.helm.sh/helm-v3.11.3-linux-amd64.tar.gz
tar -zxvf helm-v3.11.3-linux-amd64.tar.gz 
sudo mv linux-amd64/helm /usr/local/bin/helm
nano chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml
helm repo add ceph-csi https://ceph.github.io/csi-charts
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-cephfs ceph-csi/ceph-csi-cephfs -f chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml --version 3.7.2
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-rbd ceph-csi/ceph-csi-rbd -f chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml --version 3.7.2
nano chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml
nano chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml
watch kubectl get pods -A
helm repo add postgres-operator-charts https://opensource.zalando.com/postgres-operator/charts/postgres-operator
helm repo add ceph-csi https://ceph.github.io/csi-charts
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-rbd ceph-csi/ceph-csi-rbd -f chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml --version 3.7.2
watch kubectl get pods -A
helm repo add ceph-csi https://ceph.github.io/csi-charts
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-cephfs ceph-csi/ceph-csi-cephfs -f chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml --version 3.7.2
watch kubectl get pods -A
watch kubectl get scv
kubectl get svc
kubectl get pvc
kubectl get pv
kubectl get pv -A
kubectl get pvc -A
echo "source <(kubectl completion bash)" >> ~/.bashrc
source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc
kubectl -n staff delete pods registry-sdplc 
kubectl get pvc -A
kubectl get sc
watch kubectl get pods -A
kubectl get pvc -A
nano chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml 
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-rbd ceph-csi/ceph-csi-rbd -f chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml --version 3.7.2
nano chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml 
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-cephfs ceph-csi/ceph-csi-cephfs -f chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml --version 3.7.2
kubectl get pvc -A
watch kubectl get pods -A
kubectl logs -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-
kubectl logs -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-xcz8h 
kubectl logs -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-5sfp7 
nano chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml 
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-rbd ceph-csi/ceph-csi-rbd -f chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml --version 3.7.2
nano chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml 
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-rbd ceph-csi/ceph-csi-rbd -f chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml --version 3.7.2
nano chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml 
nano chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml 
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-cephfs ceph-csi/ceph-csi-cephfs -f chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml --version 3.7.2
nano chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml 
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-cephfs ceph-csi/ceph-csi-cephfs -f chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml --version 3.7.2
nano chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml 
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-rbd ceph-csi/ceph-csi-rbd -f chart_ceph-csi_ceph-csi-rbd_values_dc03.yaml --version 3.7.2
nano chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml 
kubectl get pods -A
helm upgrade --install --namespace ceph-provisioner --create-namespace ceph-csi-cephfs ceph-csi/ceph-csi-cephfs -f chart_ceph-csi_ceph-csi-cephfs-values_dc03.yaml --version 3.7.2
kubectl logs -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-5sfp7 
kubectl get pods -A
kubectl get pvc
kubectl get pvc -A
kubectl get pv -A
kubectl logs -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-5sfp7 
kubectl logs -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-xcz8h 
kubectl delete pods  -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-5sfp7 
kubectl delete pods  -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-xcz8h 
kubectl logs -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-5cxf4 
kubectl logs -n ceph-provisioner ceph-csi-rbd-provisioner-994f9c7df-l7c5l 
kubectl get pvc -A
kubectl get pods -A
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add redis-operator https://spotahome.github.io/redis-operator
helm repo add postgres-operator-charts https://opensource.zalando.com/postgres-operator/charts/postgres-operator
kubectl logs -n ceph-provisioner ceph-csi-cephfs-provisioner-7797cbf87d-6vhv2 
kubectl delete pods  -n ceph-provisioner ceph-csi-cephfs-provisioner-7797cbf87d-6vhv2 ceph-csi-cephfs-provisioner-7797cbf87d-jdrgk 
kubectl get pods -A
kubectl get svc
kubectl get svc -A
ls
nano chart_redis-operator_redis-operator_3.2.7_values_dc03.yaml
helm upgrade --install --namespace staff redis-operator redis-operator/redis-operator -f chart_redis-operator_redis-operator_3.2.7_values_dc03.yaml --version=3.2.7 --debug
kubectl get pods -A
nano chart_postgres_operator_charts_postgres_operator_1_9_0_values_dc03.yaml
helm upgrade —install --namespace staff postgres-operator postgres-operator-charts/postgres-operator  -f chart_postgres-operator-charts_postgres-operator_1.9.0_values_dc03.yaml --version=1.9.0 --debug
helm upgrade -install --namespace staff postgres-operator postgres-operator-charts/postgres-operator  -f chart_postgres-operator-charts_postgres-operator_1.9.0_values_dc03.yaml --version=1.9.0 --debug
nano chart_postgres-operator-charts_postgres-operator_1.9.0_values_dc03.yaml
helm upgrade -install --namespace staff postgres-operator postgres-operator-charts/postgres-operator  -f chart_postgres_operator_charts_postgres-operator_1.9.0_values_dc03.yaml --version=1.9.0 --debug
helm upgrade -install --namespace staff postgres-operator postgres-operator-charts/postgres-operator  -f chart_postgres_operator_charts_postgres_operator_1_9_0_values_dc03.yaml --version=1.9.0 --debug
kubectl --namespace=staff get pods -l "app.kubernetes.io/name=postgres-operator"
kubectl get pods -A
watch kubectl get pods -A
sudo nano /etc/containerd/config.toml 
nano chart_postgres_operator_charts_postgres_operator_1_9_0_values_dc03.yaml 
sudo nano /etc/containerd/config.toml 
nano chart_postgres_operator_charts_postgres_operator_1_9_0_values_dc03.yaml 
kubectl -n staff describe pods postgres-operator-9b8676dc8-f9gmx 
nano chart_postgres_operator_charts_postgres_operator_1_9_0_values_dc03.yaml 
helm upgrade -install --namespace staff postgres-operator postgres-operator-charts/postgres-operator  -f chart_postgres_operator_charts_postgres_operator_1_9_0_values_dc03.yaml --version=1.9.0 --debug
watch kubectl get pods -A
kubectl get pv
kubectl -n staff edit pv
kubectl get pv
шз ф
ip a
kubectl -n staff describe pods postgres-operator-9b8676dc8-f9gmx 
kubectl get pvс
kubectl get зщвы -Ф
kubectl get pods -A
kubectl -n staff describe pods postgres-operator-9b8676dc8-f9gmx 
kubectl -n staff describe pods postgres-operator-ddf848b46-wc9qw 
kubectl get pods -A
ды
ls
nano chart_redis-operator_redis-operator_3.2.7_values_dc03.yaml 
helm upgrade --install --namespace staff redis-operator redis-operator/redis-operator -f chart_redis-operator_redis-operator_3.2.7_values_dc03.yaml --version=3.2.7 --debug
kubectl get pods -A
helm upgrade --install --namespace staff redis-operator redis-operator/redis-operator -f chart_redis-operator_redis-operator_3.2.7_values_dc03.yaml --version=3.2.7 --debug
nano chart_bitnami_rabbitmq-cluster-operator_3.2.8_values_dc03.yaml
helm upgrade --install --namespace staff rabbitmq-operator bitnami/rabbitmq-cluster-operator -f chart_bitnami_rabbitmq-cluster-operator_3.2.8_values_dc03.yaml --version=3.2.8 --debug
kubectl get pods -A
helm upgrade --install --namespace staff rabbitmq-operator bitnami/rabbitmq-cluster-operator -f chart_bitnami_rabbitmq-cluster-operator_3.2.8_values_dc03.yaml --version=3.2.8 --debug
kubectl get pods -A
ls
kubectl get pods -A
history 
ls
nano chart_kube-prometheus-stack_values_dc03.yaml
ip a
nano chart_kube-prometheus-stack_values_dc03.yaml
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm upgrade --install --namespace monitoring prometheus -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.8 --debug
helm upgrade --install --namespace monitoring prometheus prometheus-community -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.8 --debug
helm upgrade --install --namespace monitoring prometheus prometheus-community/prometheus-community -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.8 --debug
helm upgrade --install --namespace monitoring prometheus prometheus-community/prometheus -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.8 --debug
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo list
helm repo list -v
helm repo list -V
helm repo list ?
helm repo list help
helm repo 
helm repo list 
helm upgrade --install --namespace monitoring prometheus prometheus helm-charts/prometheus-community -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm upgrade --install --namespace monitoring prometheus helm-charts/prometheus-community -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm upgrade --install --namespace monitoring prometheus prometheus-community/prometheus-community -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm upgrade --install --namespace monitoring  prometheus-community/prometheus-community -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm upgrade --install --namespace monitoring prometheus-community  prometheus-community/prometheus-community -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm upgrade --install --namespace monitoring prometheus prometheus-community/helm-charts  -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm repo list 
helm upgrade --install --namespace monitoring prometheus-community prometheus-community/helm-charts  -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm upgrade --install --namespace monitoring prometheus-community prometheus-community/prometheus-community  -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm repo list 
kubectl create namespace monitoring 
helm upgrade --install --namespace monitoring prometheus-community prometheus-community/prometheus-community  -f chart_kube-prometheus-stack_values_dc03.yaml --version=3.2.7 --debug
helm repo list 
helm upgrade --install --namespace monitoring --create-namespace prometheus prometheus-community/kube-prometheus-stack -f chart_kube-prometheus-stack_values_dc03.yaml --version=43.2.1
kubectl get pods -A
kubectl get svc
kubectl get svc -A
kubectl get service
kubectl get service -A
ip a
kubectl get service -A
kubectl get ingress
kubectl get ingress -A
kubectl get pods -A
kubectl get ingress -A
kubectl get service -A
iptables-xml 
sudo iptables-save 
sudo systemctl status ufw.service 
sudo systemctl stop ufw.service 
sudo systemctl status ufw.service 
wget prometheus-prometheus.monitoring.svc.ec50.local:9090
sudo apt remove ufw 
sudo systemctl status ufw.service 
curl prometheus-prometheus.monitoring.svc.ec50.local:9090
curl prometheus-prometheus.monitoring.svc.ec50.local:9090/
curl prometheus-prometheus.monitoring.svc.ec50.local:9090/staus
curl prometheus-prometheus.monitoring.svc.ec50.local:9090/staus/target
curl prometheus-prometheus.monitoring.svc.ec50.local:9090/
kubectl get service -A
kubectl get pods -A
kubectl describe -n monitoring pods prometheus-grafana-7f8598465d-whqhk 
kubectl get nodes 
kubectl get pods -A
kubectl get nodes 
curl prometheus-prometheus.monitoring.svc.ec50.local:9090/
kubectl get nodes 
kubectl get pods -A
kubectl describe -n monitoring pods prometheus-grafana-7f8598465d-whqhk 
kubectl -n monitoring delete pods prometheus-grafana-7f8598465d-whqhk 
curl http://10.244.184.8:3000/api/health
kubectl describe -n monitoring pods prometheus-grafana-7f8598465d-klwpd 
kubectl get pods -A
kubectl describe -n monitoring pods prometheus-prometheus-0
kubectl describe -n monitoring pods prometheus-prometheus-prometheus-0 
curl prometheus-prometheus.monitoring.svc.ec50.local:9090/
curl prometheus-prometheus.monitoring.svc.ec50.local:9090/graph
curl http://prometheus-prometheus.monitoring.svc.ec50.local:9090/graph
curl http://prometheus-prometheus.monitoring.svc.ec50.local:9090/graph -vvvvv
*   Trying 10.251.248.11:9090...
* connect to 10.251.248.11 port 9090 failed: В соединении отказано
* Failed to connect to prometheus-prometheus.monitoring.svc.ec50.local port 9090 after 0 ms: В соединении отказано
* Closing connection 0
curl: (7) Failed to connect to prometheus-prometheus.monitoring.svc.ec50.local port 9090 after 0 ms: В соединении отказано
curl http://prometheus-prometheus.monitoring.svc.ec50.local:9090/graph -vvvvv
nano chart_postgres_operator_charts_postgres_operator_1_9_0_values_dc03.yaml 
nano chart_kube-prometheus-stack_values_dc03.yaml 
helm upgrade --install --namespace monitoring --create-namespace prometheus prometheus-community/kube-prometheus-stack -f chart_kube-prometheus-stack_values_dc03.yaml --version=43.2.1
nano chart_kube-prometheus-stack_values_dc03.yaml 
helm upgrade --install --namespace monitoring --create-namespace prometheus prometheus-community/kube-prometheus-stack -f chart_kube-prometheus-stack_values_dc03.yaml --version=43.2.1
kubectl get pods -A
nano chart_kube-prometheus-stack_values_dc03.yaml 
curl prometheus-grafana.monitoring.svc.ec50.local
curl prometheus-grafana.monitoring.svc.ec50.local -vvv
history | grep helm
kubectl get pods -A
history | grep helm
helm upgrade --install --namespace staff rabbitmq-operator bitnami/rabbitmq-cluster-operator -f chart_bitnami_rabbitmq-cluster-operator_3.2.8_values_dc03.yaml --version=3.2.8 --debug
kubectl get pods -A
kubectl get pods -A -n staff 
kubectl get pods -n staff 
watch kubectl get pods -n staff 
nano chart_redis-operator_redis-operator_3.2.7_values_dc03.yaml 
helm upgrade --install --namespace staff redis-operator redis-operator/redis-operator -f chart_redis-operator_redis-operator_3.2.7_values_dc03.yaml --version=3.2.7 --debug
watch kubectl get pods -n staff
cd dashboard/
for i in `ls`; do echo $1 ; done
for i in `ls`; do echo $i ; done
for i in `ls`; do kubectl applay -f $i ; done
for i in `ls`; do kubectl apply -f $i ; done
св 
cd 
nano chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml 
helm upgrade --install --namespace logging --create-namespace elasticsearch bitnami/elasticsearch -f chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml --version 19.5.6 --debu
watch kubectl get pods -n staff
watch kubectl get pods -n logging 
nano chart_fluent_fluent-bit_values_dc03.yaml 
nano chart_bitnami-kibana_10.2.11_values_dc03.yaml 
watch kubectl get pods -n logging
helm upgrade --install --namespace logging --create-namespace fluent-bit fluent/fluent-bit -f chart_fluent_fluent-bit_values_dc03.yaml --version=0.21.5 --debug
watch kubectl get pods -n logging
kubectl -n logging describe pods elasticsearch-coordinating-0
kubectl -n logging describe pods elasticsearch-coordinating-1
kubectl -n logging describe pods elasticsearch-data-1 
kubectl -n logging describe pods elasticsearch-master-0 
kubectl get pvc
kubectl get pvc -A
kubectl get pv -A
kubectl -n logging describe pods elasticsearch-master-0 
kubectl get pv -A
kubectl -n logging describe pods elasticsearch-master-0 
kubectl -n logging delete pods elasticsearch-master-0 
kubectl -n logging describe pods elasticsearch-master-0 
kubectl -n logging delete pods elasticsearch-master-1
kubectl -n logging describe pods elasticsearch-master-1
kubectl get pv -A
watch kubectl get pods -n logging
kubectl get pv -A
watch kubectl get pods -n logging
kubectl -n logging describe pods elasticsearch-master-0 
kubectl get pv -A
kubectl -n logging describe pods elasticsearch-master-1
nano chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml 
helm repo add  bitnami/elasticsearch
helm repo add  elasticsearch
helm upgrade --install --namespace logging --create-namespace elasticsearch bitnami/elasticsearch -f chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml --version 19.5.6 --debug
history | grep add
helm uninstall --namespace logging  elasticsearch
helm repo add elastic https://helm.elastic.co
helm repo add fluent https://fluent.github.io/helm-charts
helm upgrade --install --namespace logging --create-namespace elasticsearch bitnami/elasticsearch -f chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml --version 19.5.6 --debug
watch kubectl get pods -n logging
helm uninstall --namespace logging  elasticsearch
nano chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml 
helm upgrade --install --namespace logging --create-namespace elasticsearch bitnami/elasticsearch -f chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml --version 19.5.6 --debug
watch kubectl get pods -n logging
kubectl -n logging describe pods elasticsearch-master-0 
watch kubectl get pods -n logging
watch kubectl get pods -A
watch kubectl get pods -n logging
kubectl -n logging describe pods elasticsearch-master-0 
watch kubectl get pods -A
kubectl get pods -A
nano chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml 
helm uninstall --namespace logging  elasticsearch
helm upgrade --install --namespace logging --create-namespace elasticsearch bitnami/elasticsearch -f chart_bitnami-elasticsearch_19.5.6_dc03_values.yaml --version 19.5.6 --debug
watch kubectl get pods -n logging
history | grep for
helm upgrade --install --namespace logging --create-namespace fluent-bit fluent/fluent-bit -f chart_fluent_fluent-bit_values_dc03.yaml --version=0.21.5 --debug
watch kubectl get pods -n logging
nano chart_bitnami-kibana_10.2.11_values_dc03.yaml 
helm upgrade --install --namespace logging --create-namespace kibana bitnami/kibana -f chart_bitnami-kibana_10.2.11_values_dc03.yaml --version=10.2.11 --debug
watch kubectl get pods -n logging
kubectl -n logging describe pods kibana-69746f5767-sdztf 
watch kubectl get pods -n logging
kubectl -n logging describe pods kibana-69746f5767-sdztf 
watch kubectl get pods -n logging
kubectl -n logging describe pods kibana-69746f5767-sdztf 
nano chart_bitnami-kibana_10.2.11_values_dc03.yaml 
kubectl -n logging describe pods kibana-69746f5767-sdztf 
kubectl get pods -A
kubectl get pods -A -o wide 
watch kubectl get pods -A -o wide 
kubectl -n logging describe pods kibana-69746f5767-sdztf 
kubectl -n logging delete pods kibana-69746f5767-sdztf 
kubectl -n logging describe pods kibana-69746f5767-brtmg 
watch kubectl get pods -A -o wide 
kubectl -n logging describe pods kibana-69746f5767-brtmg 
wget http://10.244.184.34:5601/status
kubectl -n logging describe pods kibana-69746f5767-brtmg 
kubectl delete nodes cplain-03
kubectl delete nodes cplain-02
watch kubectl get pods -A -o wide 
kubectl get  nodes
watch kubectl get pods -A -o wide 
kubectl -n logging delete pods kibana-69746f5767-rwhvw 
watch kubectl get pods -A -o wide 
kubectl -n logging delete pods kibana-69746f5767-brtmg 
watch kubectl get pods -A -o wide 
kubectl -n logging delete pods elasticsearch-metrics-7b6d9cc5c6-r9b9v 
watch kubectl get pods -A -o wide 
kubectl get pods -n monitoring 
kubectl -n monitoring delete pods prometheus-grafana-7f8598465d-6hvht 
kubectl -n monitoring delete pods prometheus-grafana-7f8598465d-klwpd 
kubectl -n monitoring delete pods prometheus-grafana-7f8598465d-wvc4b 
kubectl get pods -n monitoring 
watch kubectl get pods -A -o wide 
history | grep machine
watch kubectl get pods -A -o wide 
watch kubectl get pods -A 
ls
