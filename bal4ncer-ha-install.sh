#!/bin/bash

sudo add-apt-repository ppa:vbernat/haproxy-1.7
sudo apt update
sudo apt install -y haproxy
CONFIG="/etc/haproxy/haproxy.cfg"
sudo chmod a+w $CONFIG
echo "frontend http_front" >> $CONFIG
echo "bind *:80" >> CONFIG
echo "stats uri /haproxy?stats" >> $CONFIG
echo "default_backend http_back" >> $CONFIG
echo "backend http_back" >> $CONFIG
echo "balance roundrobin" >> $CONFIG
echo "server backend-server1 192.168.33.6:80 check" >> $CONFIG
sudo service haproxy restart
