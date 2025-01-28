#!/bin/sh

# builds the correct nginx configuration file from the template while setting the target domain from the environment variable
envsubst '${TARGET_DOMAIN}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

# start nginx
exec nginx -g 'daemon off;'
