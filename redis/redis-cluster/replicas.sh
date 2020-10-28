#!/bin/env zsh
### 自动获取集群ip并配置集群
OPTS="docker exec -it redis7001 redis-cli -p 7001 --cluster create"
for port in `seq 7001 7006`; do
  IP=$(docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 'redis'${port})
#  IP="172.18.19.64"
  OPTS="$OPTS $IP:${port}"
done
CMD="$OPTS --cluster-replicas 1"
${CMD}