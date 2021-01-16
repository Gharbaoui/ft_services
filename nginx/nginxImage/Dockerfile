FROM alpine:3.11
RUN apk update
RUN apk add nginx openssl
RUN apk add openrc
RUN mkdir /run/openrc
RUN mkdir /data
COPY index.html /data
COPY start-nginx.sh ./
RUN touch /run/openrc/softlevel
RUN rc
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/
CMD ["sh", "start-nginx.sh"]
