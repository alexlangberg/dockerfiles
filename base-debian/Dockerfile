########## base-debian ##########

FROM debian:jessie

USER root

# add groups
RUN groupadd -r vaultgroup \
	&& groupadd -r storagegroup \
	&& groupadd -r nodegroup

# set up vault and storage folders
#RUN mkdir -p /home/vault \
#	&& chown -R root:vaultgroup /home/vault \
#	&& chmod -R 750 /home/vault

#RUN mkdir -p /home/storage \
#	&& chown -R root:storagegroup /home/storage \
#	&& chmod -R 775 /home/storage

# mount as volumes
#VOLUME /home/vault
#VOLUME /home/storage

# install utilities
RUN apt-get -y update && apt-get install -y \
	curl \
	git \
	nano

# execute
CMD ["echo", "Debian base image set up."]
