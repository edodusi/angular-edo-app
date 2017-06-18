FROM node:7.8.0-onbuild
MAINTAINER staff@sparkfabrik.com

ENV ANGULAR_CLI_VERSION 1.0.0
ENV NODEMON_VERSION 1.11.0
ENV NODE_ENV development

RUN npm install -g @angular/cli@${ANGULAR_CLI_VERSION} nodemon@${NODEMON_VERSION}
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 3000
EXPOSE 4200
