#!/bin/sh

crontab /etc/cron/crontab
exec tini "$@"
