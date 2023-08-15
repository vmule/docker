FROM alpine:3.18

RUN apk --no-cache add logrotate tini \
    && mkdir -p /logs \
    && mkdir -p /etc/logrotate.d

RUN adduser -D -H -u 101 -s /bin/sh www-data -G www-data
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/usr/sbin/crond", "-f", "-L", "/dev/stdout"]
