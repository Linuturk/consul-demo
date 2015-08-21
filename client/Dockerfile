FROM consul
MAINTAINER linuturk@onitato.com

RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/sites-available/default
ADD nginx.json /etc/consul/nginx.json
ADD nginx_check.sh /usr/local/bin/nginx_check.sh
ADD client.json /etc/consul/client.json

EXPOSE 80

CMD nginx && consul agent -config-dir /etc/consul/
