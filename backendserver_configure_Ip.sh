#!/bin/bash
CONFIG="/etc/haproxy/haproxy.cfg"
echo "server backend-server1 $server_private_floatingIp check" >> $CONFIG
sudo service haproxy restart
   
