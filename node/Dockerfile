########## node ##########

FROM alexlangberg/debian:jessie_2017_01_18

ENV USER node
ENV NODE_VERSION v7.4.0
ENV NVM_VERSION v0.33.0

USER root

RUN useradd -r -m \
	-s /bin/bash \
	-g nodegroup \
	-G storagegroup \
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
	bunyan \
	pm2
