FROM alpine:latest

RUN apk --no-cache add logrotate tini

RUN adduser -D -H -u 101 -s /bin/sh www-data -G www-data
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/usr/sbin/crond", "-f", "-L", "/dev/stdout"]
