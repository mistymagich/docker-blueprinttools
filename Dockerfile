FROM ubuntu

## Update system
RUN apt-get update -y

## Install package
RUN apt-get install -y npm git nodejs-legacy
RUN npm install -g drakov dredd aglio

## Make dummy file
RUN mkdir -p /blueprint

## ENV
ENV BLUEPRINT_TOOLS_DOC_INDEX index.md

## entrypoint]
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080 8888
VOLUME ["/blueprint"]

# clear
RUN apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* 
