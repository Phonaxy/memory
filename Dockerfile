FROM nginx:stable

RUN apt-get update && apt-get install -y file

WORKDIR /var/concentration

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY html/ /var/concentration/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
