#!/bin/bash

#
# Delete/Stop all running openstack instances
# 

for s in `nova list | grep ACTIVE | cut -f 2 -d "|" | tr -d " "`; do 
	echo "nova deleting $s"
	nova delete $s
	echo "sleeping for 2..."
	sleep 2
done
