FROM nodered/node-red:latest-debian

RUN npm install node-red-contrib-image-tools
RUN npm install node-red-contrib-re-postgres
RUN npm install node-red-contrib-moment
RUN npm install node-red-node-ping
RUN npm install node-red-node-smooth
RUN npm install node-red-contrib-opentelemetry

USER root
RUN apt-get -y install ssocr
USER node-red
