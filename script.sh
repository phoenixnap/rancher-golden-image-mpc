#!/bin/bash
echo "updating system\n"
apt-get update; apt-get dist-upgrade -y
apt-get autoremove -y
apt-get clean -y
apt-get install docker.io -y

echo "Disable swap\n"
swapoff -a
sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

echo "Null machine ID\n"
rm /etc/machine-id
rm /var/lib/dbus/machine-id
truncate -s 0 /etc/machine-id
ln -s /etc/machine-id /var/lib/dbus/machine-id

echo "Remove default cloud init without nocloud datasource\n"
apt-get purge cloud-init -y
rm -rf /etc/cloud && rm -rf /var/lib/cloud

echo "Add cloud-init with nocloud DS\n"
apt-get install cloud-init -y
systemctl enable cloud-init
echo "Clean init seeds and logs\n"
cloud-init clean -s -l

echo "Null netplan created by installer cloud-init\n"
sudo rm -rf /etc/netplan/*

# update perl - net fix 
apt-get install perl -y

echo "network: {config: disabled}" > /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg
