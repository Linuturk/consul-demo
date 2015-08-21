#!/bin/bash

killall haproxy
haproxy -f /etc/haproxy/haproxy.cfg
