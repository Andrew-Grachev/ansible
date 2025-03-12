## Развёртывание кластера Kubernetes

# http://192.168.1.230:9000

# kubectl cluster-info
watch kubectl get pods -A -o wide
# watch kubectl get pods -A
# watch kubectl get nodes -A
# kubectl exec -it <pod-name> -n <namespace> -- sh
# kubectl describe pvc -A
# kubectl get pvc -A
# kubectl get pv -A
# kubectl describe pvc -A

# kubectl get pvc -A
# kubectl get pv -A
# kubectl describe pvc -A
# rbd ls -p kube (на Ceph)



# kubeadm config images pull


# https://www.youtube.com/watch?v=GRlMC-7qZv8


 helm repo list
 helm repo update
 helm search repo -l kube-prometheus-stack | head -20
 helm show values prometheus/kube-prometheus-stac --version 10.2.11 > ingress-nginx.yaml
 
 helm repo add postgres-operator-charts https://opensource.zalando.com/postgres-operator/charts/postgres-operator
 helm repo add postgres-operator-ui-charts https://opensource.zalando.com/postgres-operator/charts/postgres-operator-ui
 https://www.youtube.com/watch?v=1eJ8njJqIS4




# https://github.com/BigKAA/youtube/blob/master/kubeadm/first_control_node.md