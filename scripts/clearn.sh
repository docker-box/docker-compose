# 停止容器
docker ps -a | grep "Exited" | awk '{print $1 }'|xargs docker stop
# 删除停止的容器
docker ps -a | grep "Exited" | awk '{print $1 }'|xargs docker rm
# 在docker反复build后，会存留很多none镜像，下面命令一键删除所有none镜像
docker images|grep none|awk '{print $3 }'|xargs docker rmi
# 或者
docker rmi `docker images | grep  '<none>' | awk '{print $3}'`

# 停用全部运行中的容器:
docker stop $(docker ps -q)
# 删除全部容器：
docker rm $(docker ps -aq)

# 一键清除本地缓存的所有无用的docker镜像命令：
docker images -q --filter "dangling=true" | xargs -t --no-run-if-empty docker rmi
