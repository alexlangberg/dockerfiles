########## base-debian ##########

FROM debian:jessie

USER root

# add groups
RUN groupadd -r vaultgroup \
	&& groupadd -r storagegroup \
	&& groupadd -r nodegroup

# install utilities
RUN apt-get -y update && apt-get install -y \
	curl \
	git \
	nano

# execute
CMD ["echo", "Debian base image set up."]
