ARG ALPINE_VERSION=3.16
ARG HAPROXY_VERSION=2.4.20-r0
#FROM python:3.7-alpine${ALPINE_VERSION}
FROM alpine${ALPINE_VERSION}
RUN apk --no-cache add  gcc musl-dev curl bash

RUN set -x \
    && apk add --no-cache gcc musl-dev curl bash openssl haproxy=2.4.20-r0
    

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

COPY start-haproxy.sh /bin/start-haproxy.sh
COPY haproxy.cfg /etc/haproxy/haproxy.cfg

RUN chmod +x /bin/start-haproxy.sh

ENTRYPOINT ["/bin/start-haproxy.sh"]

