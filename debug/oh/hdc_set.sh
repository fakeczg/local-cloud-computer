#!/bin/bash
ifconfig eth0 10.31.93.178 netmask 255.255.255.0
route add default gw 10.31.93.254
param set persist.hdc.mode tcp
param set persist.hdc.port 9527
hdcd &
