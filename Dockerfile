FROM  node:8-alpine

RUN npm install -g vue-cli && \
    npm install -g quasar-cli && \
    npm install -g @vue/cli && \
    npm install -g @vue/cli-init 
RUN mkdir /home/node/app
#ADD . /home/node/app

WORKDIR /home/node/app
USER root

# VOLUME [ "/home/node/app" ]
WORKDIR /home/node/app

RUN yarn install && \
	yarn cache clean && \
	rm -rf /var/cache/apk/* /tmp/*

CMD /bin/sh