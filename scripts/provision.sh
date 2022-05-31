#!/bin/bash

# Instalando Pacotes para o Loadbalancer e NFS
apt-get update && apt-get install -y vim nfs-kernel-server nfs-common -qq &> /dev/null && echo "OK - Instalando Pacotes - NFS"

# Configurando Pasta do NFS
mkdir -p /srv/app && echo "OK - Configurada Pastas do NFS"

# Configurando Exports do NFS 
if ! grep '/srv/app' /etc/exports; then
  echo '/srv/app 172.27.2.0/255.255.0.0(rw,no_root_squash,subtree_check)' >> /etc/exports && systemctl restart nfs-kernel-server && echo 'OK - Exports NFS configurado'
fi

