########## debian ##########

FROM debian:jessie

# correct debian character encoding
ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

ENV APP_USER appuser
ENV APP_GROUP appgroup
ENV APP_HOME /home/$APP_USER

RUN groupadd -r $APP_GROUP

RUN useradd -r -m \
	-s /bin/bash \
	-g $APP_GROUP \
	$APP_USER

# install utilities
RUN apt-get -y update && apt-get install -y \
	curl \
	git \
	nano

ADD https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64 /usr/local/bin/gosu
RUN chmod 755 /usr/local/bin/gosu

# execute
CMD ["echo", "Debian base image set up."]
