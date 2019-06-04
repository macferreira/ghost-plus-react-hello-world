#!/usr/bin/env sh

echo ${HTTP_AUTH_LOGIN}:${HTTP_AUTH_PASSWORD} > /etc/nginx/.htpasswd

nginx -g "daemon off;"
