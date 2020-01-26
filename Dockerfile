
FROM alpine:edge

MAINTAINER Michael Hoffmann (https://github.com/datoma)

RUN apk update && apk add --no-cache nikto perl-net-ssleay && rm -f /tmp/* /etc/apk/cache/*

ENTRYPOINT ["nikto.pl"]

CMD [ "-Help"]
