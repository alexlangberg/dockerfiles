########## mediasampler ##########

FROM alexlangberg/node:7.4.0_2017_02_15

ENV SITESAMPLER_LOG 1

# switch to user and go to home as workdir
USER $APP_USER
WORKDIR $APP_HOME

RUN git clone https://github.com/alexlangberg/node-mediasampler.git

WORKDIR $APP_HOME/node-mediasampler

RUN npm install

CMD ["pm2-docker", "index.js"]
