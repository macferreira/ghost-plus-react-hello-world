FROM nginx:alpine

ENV HTTP_AUTH_LOGIN 'test123'
ENV HTTP_AUTH_PASSWORD '$apr1$eh0/rUUG$BLLK6mVqniMNReS2f8hm50'

# Copy nginx conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# Copy self-signed certificates
COPY certificates/blog.example.com.cert /etc/ssl/certs/blog.example.com.cert
COPY certificates/blog.example.com.key /etc/ssl/private/blog.example.com.key
COPY certificates/app.example.com.cert /etc/ssl/certs/app.example.com.cert
COPY certificates/app.example.com.key /etc/ssl/private/app.example.com.key

# Add the startup script and run it
ADD run-script/run.sh /root/run.sh
RUN chmod +x /root/run.sh
CMD /root/run.sh
