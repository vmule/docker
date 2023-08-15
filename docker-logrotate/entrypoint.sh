#!/bin/sh

crontab /etc/cron/crontab
#/usr/bin/killall crond
#/usr/sbin/crond -b
exec tini "$@"
