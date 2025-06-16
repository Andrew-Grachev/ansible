# Установка Nexus

sudo apt-get install -y podman docker skopeo





wget https://github.com/prometheus-community/helm-charts/releases/download/kube-prometheus-stack-43.2.1/kube-prometheus-stack-43.2.1.tgz

curl -LO https://github.com/prometheus-community/helm-charts/releases/download/kube-prometheus-stack-43.2.1/kube-prometheus-stack-43.2.1.tgz



#!/bin/bash
CHART_PATH="kube-prometheus-stack-43.2.1.tgz"
IMAGES=$(helm template my-release $CHART_PATH | grep -ioP "image: \K.*" | sort | uniq)

for image in $IMAGES; do
    echo "Downloading $image..."
    filename=$(echo "$image" | sed 's/[^a-zA-Z0-9._-]/_/g').tar
    podman save -o "$filename" "$image"
done




    # - name: Выкачиваем контейнеры
      # shell: |
        # docker pull cr.fluentbit.io/fluent/fluent-bit:2.0.6
        
        # docker pull cr.fluentbit.io/fluent/cr.fluentbit.io/fluent/fluent-bit
        # docker pull docker.io/bitnami/kubectl:1.22
        # docker pull docker.io/bitnami/kibana:8.5.3-debian-11-r9
        # docker pull docker.io/bitnami/bitnami-shell:11-debian-11-r69
        # docker pull docker.io/bitnami/kibana:8.5.3


    # - name: Пакуем контейнеры
      # shell: |
        # docker save -o fluent-bit-2.0.6.tar cr.fluentbit.io/fluent/fluent-bit:2.0.6
        # docker save -o fluent-bit.tar cr.fluentbit.io/fluent/fluent-bit

        # docker save -o kubectl-1.22.tar docker.io/bitnami/kubectl:1.22
        # docker save -o kibana-8.5.3-debian-11-r9.tar docker.io/bitnami/kibana:8.5.3-debian-11-r9
        # docker save -o bitnami-shell-11-debian-11-r69.tar docker.io/bitnami/bitnami-shell:11-debian-11-r69
        # docker save -o kibana-8.5.3.tar docker.io/bitnami/kibana:8.5.3




# curl -OL http://10.4.151.216:5000/imgs/fluent-bit.tar
# curl -OL http://10.4.151.216:5000/imgs/fluent-bit-2.0.6.tar
# curl -OL http://10.4.151.216:5000/imgs/kubectl-1.22.tar
# curl -OL http://10.4.151.216:5000/imgs/kibana-8.5.3-debian-11-r9.tar
# curl -OL http://10.4.151.216:5000/imgs/bitnami-shell-11-debian-11-r69.tar


# skopeo copy docker-archive:./fluent-bit.tar containers-storage:cr.fluentbit.io/fluent/fluent-bit
# skopeo copy docker-archive:./fluent-bit-2.0.6.tar containers-storage:cr.fluentbit.io/fluent/fluent-bit:2.0.6
# skopeo copy docker-archive:./kubectl-1.22.tar containers-storage:docker.io/bitnami/kubectl:1.22
# skopeo copy docker-archive:./kibana-8.5.3-debian-11-r9.tar containers-storage:docker.io/bitnami/kibana:8.5.3-debian-11-r9
# skopeo copy docker-archive:./bitnami-shell-11-debian-11-r69.tar containers-storage:docker.io/bitnami/bitnami-shell:11-debian-11-r69



