########## node ##########

FROM alexlangberg/debian:jessie

ENV USER node
ENV NODE_VERSION v4.1.1
ENV NVM_VERSION v0.26.1

USER root

RUN useradd -r -m \
	-s /bin/bash \
	-g nodegroup \
	-G vaultgroup,storagegroup \
	$USER

# switch to user and go to home as workdir
USER $USER

ENV HOME /home/$USER

WORKDIR $HOME

# install nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash

ENV NVM_DIR $HOME/.nvm

ENV NVM $NVM_DIR/nvm.sh

# install node
RUN . $NVM \
	&& nvm install $NODE_VERSION \
	&& nvm alias default $NODE_VERSION \
	&& nvm use default \
	&& echo "source ${HOME}/.nvm/nvm.sh" >> $HOME/.profile

ENV PATH $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH

# install global node modules
RUN npm install -g \
	gulp \
	pm2 \
	bunyan
