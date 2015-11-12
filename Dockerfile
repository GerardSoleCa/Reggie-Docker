FROM ubuntu:latest
MAINTAINER gerard.sole@alteraid.com

RUN apt-get update && apt-get install -y git curl build-essential

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs git; apt-get upgrade -y;
RUN npm install -g forever

RUN git clone https://github.com/mbrevoort/node-reggie.git /reggie
WORKDIR /reggie
RUN npm install

EXPOSE 1234

COPY entrypoint /
CMD /entrypoint
