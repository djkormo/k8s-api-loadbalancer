ARG ALPINE_VERSION=3.15

FROM python:3.7-alpine${ALPINE_VERSION}

RUN apk --no-cache add  gcc musl-dev curl bash

RUN set -x \
    && apk add --no-cache gcc musl-dev curl bash  keepalived=2.2.4-r2


ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en


COPY start-keepalived.sh /bin/start-keepalived.sh
COPY notifyscript.sh /bin/notifyscript.sh
COPY keepalived.conf /etc/keepalived/keepalived.conf
COPY check_haproxy.sh /usr/local/bin/check_haproxy.sh

RUN chmod +x /bin/start-keepalived.sh \
    && chmod +x /bin/notifyscript.sh \
    && chmod +x /usr/local/bin/check_haproxy.sh

ENTRYPOINT ["/bin/start-keepalived.sh"]
