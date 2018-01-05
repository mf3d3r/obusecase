#!/bin/bash
touch /tmp/counter
echo "server_counter: $server_counter" >> /tmp/counter
CONFIG="/etc/haproxy/haproxy.cfg"
echo "server backend-server ${server_private}:80 check" >> $CONFIG
sudo service haproxy restart
