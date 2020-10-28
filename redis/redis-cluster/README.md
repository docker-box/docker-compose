## 说明
还未运行, 里边的一些东西可以参考

## 运行
```shell script
docker exec -it redis7001 redis-cli -p 7001 --cluster create 172.24.0.5:7001 172.24.0.2:7002 172.24.0.4:7003 172.24.0.6:7004 172.24.0.7:7005 172.24.0.3:7006 --cluster-replicas 1```

```shell script
docker exec -it redis7001 redis-cli -p 7001 --cluster create 172.18.19.64:7001 172.18.19.64:7002 172.18.19.64:7003 172.18.19.64:7004 172.18.19.64:7005 172.18.19.64:7006 --cluster-replicas 1
```