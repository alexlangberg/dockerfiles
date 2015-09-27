########## vault ##########

FROM alexlangberg/base-debian:v1

USER root

RUN useradd -r -s /bin/bash -g vaultgroup vault

# set up vault and storage folders
RUN mkdir -p /home/vault \
	&& chown -R vault:vaultgroup /home/vault \
	&& chmod -R 750 /home/vault

VOLUME /home/vault

USER vault

COPY secrets.sh /home/vault/secrets.sh

CMD ["echo", "Vault container set up."]
