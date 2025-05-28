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




