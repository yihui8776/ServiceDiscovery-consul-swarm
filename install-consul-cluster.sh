#!/bin/bash

docker stack rm consul-cluster

sleep 10s

set -e

[ "$HOST_IP1" ] || HOST_IP1="120.24.197.36"
[ "$HOST_IP2" ] || HOST_IP2="106.13.35.136"
[ "$HOST_IP3" ] || HOST_IP3="120.76.56.191"
[ "$HOST_IP4" ] || HOST_IP4="120.24.197.36"
[ "$HOST_IP5" ] || HOST_IP5="106.13.35.136"
[ "$HOST_IP6" ] || HOST_IP6="120.76.56.191"

cp -f docker-stack-consul-cluster.yml docker-stack-consul-cluster.yml.temp
sed -i 's/IP1/'$HOST_IP1'/g' docker-stack-consul-cluster.yml.temp
sed -i 's/IP2/'$HOST_IP2'/g' docker-stack-consul-cluster.yml.temp
sed -i 's/IP3/'$HOST_IP3'/g' docker-stack-consul-cluster.yml.temp
sed -i 's/IP4/'$HOST_IP4'/g' docker-stack-consul-cluster.yml.temp
sed -i 's/IP5/'$HOST_IP5'/g' docker-stack-consul-cluster.yml.temp
sed -i 's/IP6/'$HOST_IP6'/g' docker-stack-consul-cluster.yml.temp
docker stack deploy -c ./docker-stack-consul-cluster.yml.temp consul-cluster
rm -rf ./docker-stack-consul-cluster.yml.temp
