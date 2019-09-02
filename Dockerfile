# mo_dev_nginx

FROM nginx:1.17.3

EXPOSE 80
RUN mkdir -p /etc/nginx/sites-available
RUN mkdir -p /etc/nginx/sites-enabled
RUN rm /etc/nginx/conf.d/default.conf
COPY ./default /etc/nginx/sites-available/default
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default