FROM consuldemo_consul
MAINTAINER linuturk@onitato.com

RUN apt-get install haproxy psmisc -y

ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD haproxy.ctmpl /etc/consul/haproxy.ctmpl
ADD client.json /etc/consul/client.json
ADD reload_haproxy.sh /usr/local/bin/reload_haproxy.sh
ADD run.sh /usr/local/bin/run.sh

CMD bash /usr/local/bin/run.sh

EXPOSE 8080
EXPOSE 8888
