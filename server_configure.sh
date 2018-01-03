#!/bin/bash
touch /tmp/ip-private
echo "server_private_Ip: $server_private" >> /tmp/ip-private
CONFIG="/etc/haproxy/haproxy.cfg"
echo "server backend-server1 $server_private check" >> $CONFIG
sudo service haproxy restart
   
