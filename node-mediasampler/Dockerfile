########## mediasampler ##########

FROM alexlangberg/node:7.4.0_2017_02_12

ENV USER node
ENV SITESAMPLER_LOG 1

# switch to user and go to home as workdir
USER $USER

WORKDIR $HOME

RUN git clone https://github.com/alexlangberg/node-mediasampler.git

WORKDIR $HOME/node-mediasampler

RUN npm install

CMD ["pm2-docker", "index.js"]
