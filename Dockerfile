FROM node:8.7.0

RUN mkdir -p /opt/app

WORKDIR /opt/app
COPY package.json package-lock.json /opt/app/
RUN npm install && npm cache clean --force

COPY . /opt/app

CMD [ "node", "bin/www" ]
