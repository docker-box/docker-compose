## install
```bash
# download compose pro
git clone https://github.com/docker-box/compose.git ~/docker/compose
# you can choose version in .env file
cd ~/docker/compose && cp env.example .env
# boot background and auto build images
docker-compose up -d
```

## images
```bash
# nginx
nginx:1.16-alpine
# nodejs
node:12.2-alpine
# mysql
mysql:8.0
# redis
redis:5.0-alpine3.9
# php7
ababy/php
# php5.6
ababy/php:5.6-alpine
# php5.2
liukaitj/php52
# composer
ababy/composer
```

## composer
```
composer () {
    docker run \
        -it \
        --rm \
        --user $(id -u):$(id -g) \
        --volume ~/docker/compose/php/composer:/tmp \
        --volume /etc/passwd:/etc/passwd:ro \
        --volume /etc/group:/etc/group:ro \
        --volume $(pwd):/app \
        composer "$@"
}

```