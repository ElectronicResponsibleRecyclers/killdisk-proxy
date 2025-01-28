FROM nginx:alpine

# directory for logs
RUN mkdir -p /var/log/nginx

# copy nginx template and entrypoint script
COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template
COPY docker-entrypoint.sh /docker-entrypoint.sh

# make entrypoint script executable
RUN chmod +x /docker-entrypoint.sh

# volume for logs
VOLUME /var/log/nginx
