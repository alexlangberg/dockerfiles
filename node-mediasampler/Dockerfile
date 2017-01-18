########## mediasampler ##########

FROM alexlangberg/node:7.4.0

ENV USER node

# switch to user and go to home as workdir
USER $USER

WORKDIR $HOME

COPY start.sh start.sh

CMD ["/bin/bash", "start.sh"]
