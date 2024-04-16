#!/bin/bash
ifconfig eth0 10.31.90.121 netmask 255.255.252.0
route add default gw 10.31.90.254
param set persist.hdc.mode tcp
param set persist.hdc.port 9527
hdcd &
