FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add nginx
ADD nginx.conf /etc/nginx/nginx.conf
ADD index.html /www/data/index.html

EXPOSE 80
EXPOSE 443
ENTRYPOINT ["nginx"]
