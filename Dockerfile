FROM node
WORKDIR "/app"
COPY package*.json ./
COPY . .
RUN apt-get update
RUN apt-get install curl sudo --yes --force-yes
RUN apt-get --yes --force-yes install npm

RUN npm install

ENTRYPOINT bash /app/host.sh $node_url
