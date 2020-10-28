#!/bin/zsh

docker-compose down
rm -rf redis-cluster

sh redis-cluster-config.sh

docker-compose up -d

# 重新生成配置,填充redis容器ip
for port in `seq 7001 7006`; do
  ipTmp=$(docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 'redis'${port})
  IP=${ipTmp} PORT=${port} envsubst < ./redis-cluster.tmpl > ./redis-cluster/${port}/conf/redis.conf
done

docker-compose restart

# 加入集群节点
#sh replicas.sh
