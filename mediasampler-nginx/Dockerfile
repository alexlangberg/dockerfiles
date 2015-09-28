########## mediasampler-nginx ##########

FROM nginx:1.9.5

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN rm -v /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf

# to fetch all files, run:
# wget -m -N -R "*.html" http://localhost:8080
