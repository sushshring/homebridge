FROM node:12
COPY . /src
WORKDIR /src
RUN npm install
ARG plugins
RUN npm install $plugins
EXPOSE 8080/tcp 6444/tcp
VOLUME ["/config.json"]
ENTRYPOINT ["/src/bin/homebridge", "-U", "/"]
