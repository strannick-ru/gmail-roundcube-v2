#! /bin/bash

/usr/sbin/service imapproxy stop
/bin/cp /srv/imapproxy/imapproxy.conf /etc/imapproxy.conf
touch /srv/imapproxy_protocol.log
chown nobody:nogroup /srv/imapproxy_protocol.log
/usr/sbin/service imapproxy start
echo "IMAP Proxy started"