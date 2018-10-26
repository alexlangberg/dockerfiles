########## node ##########

FROM alexlangberg/debian:jessie_2017_02_15

ENV NODE_VERSION v7.4.0
ENV NVM_VERSION v0.33.0

USER $APP_USER
WORKDIR $APP_HOME

# install nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash

ENV NVM_DIR $APP_HOME/.nvm

ENV NVM $NVM_DIR/nvm.sh

# install node
RUN . $NVM \
	&& nvm install $NODE_VERSION \
	&& nvm alias default $NODE_VERSION \
	&& nvm use default \
	&& echo "source ${APP_HOME}/.nvm/nvm.sh" >> $APP_HOME/.profile

ENV PATH $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH

# install global node modules
RUN npm install -g \
	gulp \
	pm2
