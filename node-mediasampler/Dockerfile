########## mediasampler ##########

FROM alexlangberg/node:7.4.0_2017_02_15

ENV SITESAMPLER_LOG 1
ENV VOLUME_DIR $APP_HOME/node-mediasampler/mediasampler

# switch to user and go to home as workdir
USER $APP_USER
WORKDIR $APP_HOME

RUN git clone https://github.com/alexlangberg/node-mediasampler.git

WORKDIR $APP_HOME/node-mediasampler

RUN npm install

RUN mkdir $VOLUME_DIR
VOLUME $VOLUME_DIR

USER root

ENTRYPOINT groupmod -g $(stat -c "%g" $VOLUME_DIR) $APP_GROUP && \
  usermod -u $(stat -c "%u" $VOLUME_DIR) $APP_USER && \
  gosu $APP_USER pm2-docker -- index.js

#CMD ["pm2-docker", "index.js"]
