#!/bin/bash
sudo chmod a+w /etc/haproxy/haproxy.cfg
echo "frontend http_front" >> /etc/haproxy/haproxy.cfg;
echo "bind *:80" >> /etc/haproxy/haproxy.cfg
echo "stats uri /haproxy?stats" >> /etc/haproxy/haproxy.cfg
echo "default_backend http_back" >> /etc/haproxy/haproxy.cfg
echo "backend http_back" >> /etc/haproxy/haproxy.cfg
echo "balance roundrobin" >> /etc/haproxy/haproxy.cfg
echo "server backend-server1 {$backendserver_private}:80 check" >> /etc/haproxy/haproxy.cfg
sudo service haproxy restart
   
