########## debian ##########

FROM debian:jessie

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

# install utilities
RUN apt-get -y update && apt-get install -y \
	curl \
	git \
	nano

# execute
CMD ["echo", "Debian base image set up."]
