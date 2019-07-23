FROM nginx:1.12-alpine
COPY _site /usr/share/nginx/html
COPY conf/nginx/default.conf /etc/nginx/conf.d/

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]