export EDITOR=mcedit
#######################################
### Расшарить внутренний DNS

kubectl create namespace metallb-system

# Установить MetalLB
helm repo add metallb https://metallb.github.io/metallb
helm install metallb metallb/metallb -n metallb-system --create-namespace
# Настроить пул IP
# metallb-pool.yaml
apiVersion: metallb.io/v1beta1
kind: IPAddressPool
metadata:
  name: public-ips
  namespace: metallb-system
spec:
  addresses:
  - 10.4.151.28-10.4.151.29  # Ваши свободные IP
---
apiVersion: metallb.io/v1beta1
kind: L2Advertisement
metadata:
  name: l2-advert
  namespace: metallb-system
spec:
  ipAddressPools:
  - public-ips
# Примените
kubectl apply -f metallb-pool.yaml

# Изменить тип сервиса с ClusterIP на LoadBalancer
kubectl -n kube-system patch svc kube-dns -p '{"spec":{"type":"LoadBalancer"}}'
kubectl -n kube-system get svc kube-dns
########################################







kubectl get svc -n kube-system | grep dns


ansible-galaxy collection install community.kubernetes


## Развёртывание кластера Kubernetes

# http://192.168.1.230:9000

# kubectl cluster-info
watch kubectl get pods -A -o wide       
# watch kubectl get pods -A
# watch kubectl get nodes -A
# kubectl exec -it <pod-name> -n <namespace> -- sh
# kubectl describe pvc -A
# watch kubectl get pvc -A
# kubectl get pv -A
# kubectl describe pvc -A

# rbd ls -p kube (на Ceph)

# kubectl delete namespace <имя-namespace>

# kubeadm config images pull

# https://www.youtube.com/watch?v=GRlMC-7qZv8

# Создание локального репозитория
helm repo add ceph-csi https://ceph.github.io/csi-charts
helm search repo -l ceph-csi | head -20

md helm_repo
cd helm_repo
helm repo list
helm repo update


helm pull postgres-operator/postgres-operator --version 1.9.0
helm pull prometheus/kube-prometheus-stack --version 43.2.1
helm pull bitnami/kibana --version 10.2.11
helm pull fluent/fluent-bit --version 0.21.5
helm pull bitnami/elasticsearch --version 19.5.6
helm pull bitnami/elasticsearch --version 21.5.0

helm pull rabbitmq-operator/rabbitmq-cluster-operator --version 3.2.8
helm pull redis-operator/redis-operator --version 3.2.7
helm pull ceph-csi/ceph-csi-rbd --version 3.13.1
helm pull ceph-csi/ceph-csi-cephfs --version 3.13.1
helm repo index /helm-repo
cd /helm-repo
python3 -m http.server 8080
helm repo update
helm search repo registry-local

# https://github.com/BigKAA/youtube/blob/master/kubeadm/first_control_node.md
# RedOS8
# https://redos.red-soft.ru/base/redos-8_0/8_0-administation/8_0-containers/8_0-kubernetes/8_0-kubernetes-1-28-cri-o/

# Скачивание
docker pull cr.fluentbit.io/fluent/fluent-bit:2.0.6
docker pull docker.io/bitnami/kubectl:1.22
docker pull docker.io/bitnami/kibana:8.5.3-debian-11-r9
docker pull docker.io/bitnami/bitnami-shell:11-debian-11-r69

docker save -o fluent-bit-2.0.6.tar cr.fluentbit.io/fluent/fluent-bit:2.0.6
docker save -o kubectl-1.22 docker.io/bitnami/kubectl:1.22
docker save -o kibana-8.5.3-debian-11-r9.tar docker.io/bitnami/kibana:8.5.3-debian-11-r9
docker save -o bitnami-shell-11-debian-11-r69 docker.io/bitnami/bitnami-shell:11-debian-11-r69




10.2.11

cd /tmp
curl -OL /tmp http://10.4.151.216:5000/imgs/kibana-8.5.3-debian-11-r9.tar
curl -OL /tmp http://10.4.151.216:5000/imgs/fluent-bit-2.0.6.tar
skopeo copy docker-archive:./kibana-8.5.3-debian-11-r9.tar containers-storage:docker.io/bitnami/kibana:8.5.3-debian-11-r9
skopeo copy docker-archive:./fluent-bit-2.0.6.tar containers-storage:cr.fluentbit.io/fluent/fluent-bit:2.0.6

cd /tmp
curl -OL http://10.4.151.216:5000/imgs/kibana-8.5.3-debian-11-r9.tar && skopeo copy docker-archive:./kibana-8.5.3-debian-11-r9.tar containers-storage:docker.io/bitnami/kibana:8.5.3-debian-11-r9
curl -OL http://10.4.151.216:5000/imgs/fluent-bit-2.0.6.tar && skopeo copy docker-archive:./fluent-bit-2.0.6.tar containers-storage:cr.fluentbit.io/fluent/fluent-bit:2.0.6










  # skopeo copy docker-archive:./kibana-8.5.3-debian-11-r9.tar containers-storage:docker.io/bitnami/kibana:8.5.3-debian-11-r9
# sudo skopeo copy docker-archive:./fluent-bit-2.0.6.tar containers-storage:cr.fluentbit.io/fluent/fluent-bit:2.0.6



### Monitoring
# Проверьте существующие MutatingWebhookConfigurations
kubectl get MutatingWebhookConfigurations
# Найдите вебхуки, связанные с prometheus
kubectl get MutatingWebhookConfiguration -o name | grep prometheus
# Временно отключите их
kubectl patch MutatingWebhookConfiguration <prometheus-webhook-name> \
  --type='json' -p='[{"op": "replace", "path": "/webhooks/0/failurePolicy", "value": "Ignore"}]'
# Повторите установку Helm
helm upgrade -i --reset-values prometheus registry-local/kube-prometheus-stack
# После успешной установки можно вернуть вебхуки
kubectl patch MutatingWebhookConfiguration <prometheus-webhook-name> \
  --type='json' -p='[{"op": "replace", "path": "/webhooks/0/failurePolicy", "value": "Fail"}]'
  
  
  
  
  
  
  

#DNS
kubectl -n kube-system edit cm coredns
kubectl -n kube-system edit cm node-local-dns
kubectl run -it --rm --restart=Never --image=infoblox/dnstools:latest dnstools
kubectl exec -it -n monitoring prometheus-prometheus-prometheus-0 -- cat /etc/resolv.conf
kubectl exec -it -n staff postgres-operator-bbbd4cc46-krb56 -- nslookup ya.ru

kubectl exec -it -n logging  kibana-cdc685fd4-qq56h -- nslookup ya.ru

kubectl delete namespace logging







# Заходим на поды
kubectl exec -it -n staff postgres-operator-f4d9fd896-zb4pt -- sh

kubectl exec -it -n logging  fluent-bit-sdlkj -- sh
     
	 


curl http://registry.ec.mog.ent.local:30500/v2/_catalog

podman pull docker.io/library/postgres
podman tag postgres:latest registry.ec.mog.ent.local:30500/postgres:latest
podman push registry.ec.mog.ent.local:30500/postgres:latest