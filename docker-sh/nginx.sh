docker run \
    --name nginx \
    --restart unless-stopped \
    -v /home/USER_NAME/nginx_conf:/etc/nginx/conf.d \
    -v www_html:/var/www/html \
    -p 80:80 \
    --network app \
    -d \
    nginx:stable