FROM alpine:3.2

RUN apk add --update \
    dhclient \
 && rm -fr /var/cache/apk/*

RUN mkdir /var/db

ENTRYPOINT ["/usr/sbin/dhclient", "-6", "-d"]
