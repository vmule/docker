#!/bin/sh

# Make sure you expose this in a configmap mounted in the right path
crontab /etc/cron/crontab
exec tini "$@"
