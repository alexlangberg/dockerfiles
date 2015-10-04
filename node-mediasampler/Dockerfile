########## mediasampler ##########

FROM alexlangberg/node:4.1.1

ENV USER node

# switch to user and go to home as workdir
USER $USER

WORKDIR $HOME

COPY start.sh start.sh

CMD ["/bin/bash", "start.sh"]
