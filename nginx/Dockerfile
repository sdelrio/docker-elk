FROM nginx

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

# Create self-signed certificate

RUN openssl req -x509 -batch -nodes -newkey rsa:2048 -keyout /etc/ssl/private/kibana.key -out /etc/ssl/private/kibana.crt -subj /CN=kibana
RUN chmod 600 /etc/ssl/private/kibana.key

# Add configurations

ADD config/kibana.conf /etc/nginx/conf.d/kibana.conf

# Add htpasswd

ADD config/htpasswd /etc/nginx/htpasswd
RUN chown www-data:www-data /etc/nginx/htpasswd

# Expose HTTPS port

EXPOSE 443

CMD ["nginx"]
