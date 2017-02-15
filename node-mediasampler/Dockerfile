########## mediasampler ##########

FROM alexlangberg/node:7.4.0_2017_02_14

ENV SITESAMPLER_LOG 1

WORKDIR $HOME

RUN git clone https://github.com/alexlangberg/node-mediasampler.git

WORKDIR $HOME/node-mediasampler

RUN npm install

CMD ["pm2-docker", "index.js"]
