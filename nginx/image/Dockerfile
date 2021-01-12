FROM alpine
RUN apk update
RUN apk add nginx
RUN apk add openrc
RUN mkdir /run/openrc
RUN mkdir /data
COPY index.html /data
COPY start-nginx.sh ./
RUN touch /run/openrc/softlevel
RUN rc
CMD ["sh", "start-nginx.sh"]
