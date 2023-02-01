#!/bin/sh
ifconfig -a | grep eth0
RESULT=$?
if [ $RESULT -eq 0 ]; then
	ifconfig eth0 192.168.1.100
	rftool
fi
