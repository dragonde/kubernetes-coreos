#!/bin/bash

master_ip=$(cat /run/systemd/system/fleet.service.d/20-cloudinit.conf | grep FLEET_ETCD_SERVERS | grep -o "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*")

echo "MASTER_IPV4=$master_ip" >> /etc/environment

