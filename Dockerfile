FROM node:8
RUN mkdir -p /var/log/srnet
RUN mkdir -p /usr/src/srnet
WORKDIR /usr/src/srnet

COPY package.json /usr/src/srnet/
RUN npm i
RUN npm i -g forever

COPY . /usr/src/srnet

CMD ["forever", "-l", "/var/log/srnet/logs.log", "bin/www"]
