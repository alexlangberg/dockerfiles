########## mediasampler-nginx ##########

FROM nginx:1.9.5

RUN rm -v /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf

#RUN sed -i "s/server {/server {\n \n  error_log syslog:server=loggly;\n    access_log syslog:server=loggly;\n/" /etc/nginx/conf.d/default.conf

# to fetch all files, run:
# wget -m -N -R "*.html" http://localhost:8080
