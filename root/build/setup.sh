#!/bin/bash
set -xeo pipefail

yum -y update
yum -y install openssh-server
yum -y clean all
rm -rf /var/cache/yum/*

wget -qO - https://github.com/jwilder/dockerize/releases/download/v0.5.0/dockerize-alpine-linux-amd64-v0.5.0.tar.gz \
	| tar zxvf - -C /usr/local/bin


mkdir /etc/ssh/keys
chmod -v +x /etc/services.d/*/run /etc/cont-init.d/* 
