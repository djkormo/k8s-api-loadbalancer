FROM centos:8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

RUN yum update -y -v && \
    yum upgrade -y && \
    yum install -y langpacks-en glibc-all-langpacks epel-release && \
    yum install -y  keepalived && \
    yum clean all && rm -rf /var/cache/yum/* && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.conf

# run as non-root
RUN groupadd --gid 5107 containeruser \
    && useradd --home-dir /home/containeruser --create-home --uid 5107 \
    --gid 5107 --shell /bin/sh --skel /dev/null containeruser

COPY start-keepalived.sh /bin/start-keepalived.sh
COPY notifyscript.sh /bin/notifyscript.sh
COPY keepalived.conf /etc/keepalived/keepalived.conf
COPY check_haproxy.sh /usr/local/bin/check_haproxy.sh

RUN chmod +x /bin/start-keepalived.sh \
    && chmod +x /bin/notifyscript.sh \
    $$ chmod +x /usr/local/bin/check_haproxy.sh

ENTRYPOINT ["/bin/start-keepalived.sh"]
# USER containeruser
# WORKDIR /home/containeruser
