FROM nginx:latest

USER root:root

RUN rm -rf /usr/share/nginx/html/*
COPY config /usr/share/nginx/html
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

ENTRYPOINT ["nginx", "-g", "daemon off;"]
