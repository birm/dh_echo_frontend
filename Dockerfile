FROM node
ARG node_url

ADD . / ./
RUN apt-get update
RUN apt-get install curl sudo --yes --force-yes
RUN apt-get --yes --force-yes install npm

RUN npm install

ENTRYPOINT bash host.sh $node_url
