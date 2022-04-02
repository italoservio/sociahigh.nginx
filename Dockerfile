FROM nginx:latest
ARG environment
RUN mkdir -p /etc/nginx/conf.d
RUN mkdir -p /etc/nginx/conf.d/common
RUN mkdir -p /etc/nginx/vhost
RUN mkdir -p  /etc/nginx/ssl
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx/conf.d/$environment.conf /etc/nginx/conf.d/
COPY ./nginx/conf.d/common/* /etc/nginx/conf.d/common/
COPY ./nginx/vhost/* /etc/nginx/vhost/
COPY ./nginx/ssl/* /etc/nginx/ssl/
EXPOSE 80 443
