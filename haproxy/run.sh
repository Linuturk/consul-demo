#!/bin/bash

consul agent -config-dir /etc/consul/ &
consul-template -template="/etc/consul/haproxy.ctmpl:/etc/haproxy/haproxy.cfg:bash /usr/local/bin/reload_haproxy.sh"
