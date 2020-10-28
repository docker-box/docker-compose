#!/bin/bash
export LANG=en_US.utf8
#如果存在结果文件，先删除
#重新获取证书
# docker run -it --rm -v /home/ProjectPublish/Divination/docker-nginx/certs/www.xxx.com:/etc/letsencrypt -v /home/ProjectPublish/Divination/docker-nginx/certs/www.xxx.com/lib:/var/lib/letsencrypt -v /home/ProjectPublish/Divination/docker-nginx/certs/www.xxx.com/log:/var/log/letsencrypt -v /home/ProjectPublish/Divination/docker-app/webapp/app:/data/letsencrypt certbot/certbot certonly  --webroot --agree-tos --webroot-path=/data/letsencrypt -m 805513839@qq.com -d www.wenwangjiegua.top
#执行续期证书命令（执行docker容器）docker run -it --rm -v /home/ProjectPublish/Divination/docker-nginx/certs/www.xxx.com:/etc/letsencrypt -v /home/ProjectPublish/Divination/docker-nginx/certs/www.xxx.com/lib:/var/lib/letsencrypt -v /home/ProjectPublish/Divination/docker-nginx/certs/www.xxx.com/log:/var/log/letsencrypt -v /home/ProjectPublish/Divination/docker-app/webapp/app:/data/letsencrypt certbot/certbot renew #重启容器docker-compose -f /home/ProjectPublish/Divination/docker-compose.yml restart dv-front
#将结果获取下来，并发送文件mail -s "www.xxx.com 证书更新 " 805513839@qq.com < /home/ProjectPublish/Divination/docker-nginx/certs/www.wenwangjiegua.top/log/letsencrypt.log
#0 3 * * 1  /home/divination/cert_sh/www.sh