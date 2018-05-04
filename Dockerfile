FROM node:8.6

MAINTAINER heycar Engineering <team-engineering@hey.car>

ARG MAILTRAIN_VERSION=1.24.0

RUN curl https://github.com/Mailtrain-org/mailtrain/archive/v${MAILTRAIN_VERSION}.tar.gz -Lo mailtrain.tar.gz
RUN tar -xzf mailtrain.tar.gz
RUN mkdir -p /app
RUN mv mailtrain-${MAILTRAIN_VERSION}/* /app
COPY ./config/* /app/config/
WORKDIR /app

ENV NODE_ENV production
ENV PORT=7000
EXPOSE 7000

RUN npm install --no-progress --production && npm install --no-progress passport-ldapjs passport-ldapauth

CMD ["node", "index.js"]
