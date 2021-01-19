FROM alpine:3.11
RUN apk update
RUN apk add libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.7.linux-amd64.tar.gz
RUN mv grafana-7.3.7 grafana
#RUN rm /grafana/data/grafana.db
COPY  grafana.db ./grafana/data/
COPY ./start-grafana.sh ./
CMD ["sh", "./start-grafana.sh"]
