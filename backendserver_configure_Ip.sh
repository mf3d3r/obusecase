#!/bin/bash
touch /tmp/ip-private
echo "backendserver_private_Ip: $backendserver_private_Ip" >> /tmp/ip-private
CONFIG="/etc/haproxy/haproxy.cfg"
echo "server backend-server1 $backendserver_private_Ip check" >> $CONFIG
sudo service haproxy restart
   
