########## storage ##########

FROM alexlangberg/debian:jessie

USER root

RUN useradd -r -s /bin/bash -g storagegroup storage

RUN mkdir -p /home/storage \
	&& chown -R storage:storagegroup /home/storage \
	&& chmod -R 775 /home/storage

VOLUME /home/storage

USER storage

CMD ["echo", "Storage container set up."]
