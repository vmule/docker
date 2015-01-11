#!/bin/sh

service elasticsearch start
service logstash start

nginx -c /etc/nginx/nginx.conf
