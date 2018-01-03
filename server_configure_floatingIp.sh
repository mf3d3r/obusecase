#!/bin/bash

touch /tmp/ip-iperf
echo "server_private_floatingIp: $server_private_floatingIp"  >> /tmp/ip-iperf
echo "server_shared_int_network_floatingIp: $server_shared_int_network_floatingIp"  >> /tmp/ip-iperf

if [ $server_shared_int_network_floatingIp ]
then
    screen -d -m -S client iperf -c $server_shared_int_network_floatingIp -t 300
else
    screen -d -m -S client iperf -c $server_private_floatingIp -t 300
fi

