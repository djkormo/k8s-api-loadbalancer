#!/bin/sh
set -e

echo "=> Configuring haproxy"

# sed -i -e "s/<--ROUTERID-->/${ROUTERID}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--VROUTERID-->/${VROUTERID}/g" /etc/keepalived/keepalived.conf
#
# sed -i -e "s/<--VIP-->/${VIP}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--MASK-->/${MASK}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--STATE-->/${STATE}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--INTERFACE-->/${INTERFACE}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--PRIORITY-->/${PRIORITY}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--ADVERT-->/${ADVERT}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--AUTHPASS-->/${AUTHPASS}/g" /etc/keepalived/keepalived.conf
#
# sed -i -e "s/<--NOTIFIEMAILTO-->/${NOTIFIEMAILTO}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--NOTIFIEMAILFROM-->/${NOTIFIEMAILFROM}/g" /etc/keepalived/keepalived.conf
# sed -i -e "s/<--SMTPSERV-->/${SMTPSERV}/g" /etc/keepalived/keepalived.conf

echo "=> Starting haproxy ... : "

# exec /usr/sbin/haproxy -W -D -f /etc/haproxy/haproxy.cfg -p /var/run/haproxy.pid -sf $(cat /var/run/haproxy.pid) -x /var/run/haproxy.sock
exec /usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg
