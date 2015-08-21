FROM ubuntu
MAINTAINER linuturk@onitato.com

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y wget unzip
RUN wget https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip
RUN wget https://dl.bintray.com/mitchellh/consul/0.5.2_web_ui.zip
RUN wget https://github.com/hashicorp/consul-template/releases/download/v0.10.0/consul-template_0.10.0_linux_amd64.tar.gz
RUN unzip 0.5.2_linux_amd64.zip
RUN unzip 0.5.2_web_ui.zip
RUN tar xzvf consul-template_0.10.0_linux_amd64.tar.gz -C /usr/local/bin --strip-components=1
RUN rm 0.5.2_linux_amd64.zip
RUN rm 0.5.2_web_ui.zip
RUN rm consul-template_0.10.0_linux_amd64.tar.gz
RUN mv consul /usr/local/bin/consul
RUN mkdir /var/consul && mv dist /var/consul/ui
RUN mkdir /var/consul/data
RUN mkdir /etc/consul

EXPOSE 8500
