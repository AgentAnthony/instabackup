FROM ubuntu:latest
MAINTAINER r.kapishev@gmail.com
RUN curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y build-essential
COPY . /src
RUN cd /src; npm install
RUN export PORT=8080
EXPOSE 8080
CMD cd /src && node ./app.js