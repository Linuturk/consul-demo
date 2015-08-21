FROM consul
MAINTAINER linuturk@onitato.com

RUN apt-get install haproxy -y

ADD haproxy.cfg /etc/haproxy/haproxy.cfg

CMD haproxy -f /etc/haproxy/haproxy.cfg -p /var/run/haproxy.pid

EXPOSE 8888
