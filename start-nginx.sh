#!/usr/bin/env bash

cd /etc/nginx/conf.d

apt-get update
apt-get install openssl
openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365
rm -f default.conf

nginx -g 'daemon off;'
