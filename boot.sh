#!/bin/bash
echo  PATH=$PATH:/usr/local/nginx/sbin/ >> /etc/profile
source /etc/profile
groupadd www &&
useradd -s /sbin/nologin www -g www &&
nginx  &&
tail -f /usr/local/nginx/logs/access.log
