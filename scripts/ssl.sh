# certbot certonly --standalone --email jswukong@gmail.com -d ssl.mmsex.ml

# use docker
sudo docker run -it --rm --name certbot \
            -v "/etc/letsencrypt:/etc/letsencrypt" \
            -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
            certbot/certbot certonly