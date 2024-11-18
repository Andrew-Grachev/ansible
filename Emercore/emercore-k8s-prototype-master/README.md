Данная ветка создана для развёртывания тестовой среды (макет).

Подготовка ВМ:
- Небходимо создать ВМ со следующими характеристиками: 4 CPU, 12 GB RAM, диск1 50GB, диск2 > 200GB, OS Альт Серевр 10

Деплой: 
- вписать в inventory  адрес виртуальной машины


отредактировать следующие переменные в group_vars/all.yaml:
- net_dns_server_forward здесь указать вышестоящий ДНС сервер
- net_local_domain здесь указать домен для ЭК
- net_address_master01 здесь адрес сервера/ВМ
- kubernetes_pod_subnet здесь указать подсеть выделенную для подов
- kubernetes_service_subnet здесь указать подсеть выделенную для сервисов
- kubernetes_coredns_svc здесь указать адрес внутреннего днс куба, обычно это .10 сети сервисов
- storage_size_prometheus, nfs_provisioner_disk_size указать разиеры хранилищ
- lvm_provisioner_device_pattern указать диск, на котором будет развёрнуто блочное хранилище
- local_admin указать учётную запись администратор с правами sudo

в этих файлах исправить домен, можно даже поиском с заменой.
- отредактировать staff/chart_bitnami_rabbitmq-cluster-operator_3.2.8_values.yaml
- отредактировать staff/chart_bitnami-elasticsearch_19.5.6_values.yaml
- отредактировать staff/chart_bitnami-kibana_10.2.11_values.yaml
- отредактировать staff/chart_kube-prometheus-stack_values.yaml
- отредактировать staff/chart_postgres_operator_1_9_0_values.yaml

запустить плэйбук командой _ansible-playbook -i inventory.yaml deploy_alt_single.yaml_

После отработки плэйбука у нас будет подготовленный кластер для деплоя эмеркора.
