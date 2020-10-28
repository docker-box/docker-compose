## 关于
这是一个 linux + nginx + mysql + php + redis 的 docker-compose 管理服务  

## 运行
```sh
cd dc-yml
cp env-example .env
dc up -d
```

## 目录说明
```shell script
.
├── dc-yml
├── mysql
├── nginx
├── php
├── readme.md
├── redis
└── www
```
`www`: 项目代码  
`dc-yml`: docker-compose.yml文件  
其他目录: docker依赖文件,各个服务的配置文件  
个人只需要维护 `dc-yml/.env` 文件即可

## 进入项目根目录
```shell script
docker exec -it dphp
```
此时已经在`docker`内的 `/var/www` 下了, 这里就是`www`目录  