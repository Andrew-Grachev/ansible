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
helm pull rabbitmq-operator/rabbitmq-cluster-operator --version 3.2.8
helm pull redis-operator/redis-operator --version 3.2.7
helm pull ceph-csi/ceph-csi-rbd --version 3.13.1
helm pull ceph-csi/ceph-csi-cephfs --version 3.13.1
helm repo index ~/helm-repo
cd ~/helm-repo
python3 -m http.server 8080
helm repo update
helm search repo registry-local





# https://github.com/BigKAA/youtube/blob/master/kubeadm/first_control_node.md
# RedOS8
# https://redos.red-soft.ru/base/redos-8_0/8_0-administation/8_0-containers/8_0-kubernetes/8_0-kubernetes-1-28-cri-o/