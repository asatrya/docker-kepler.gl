FROM ubuntu:18.04

LABEL maintainer="Aditya Satrya <aditya.satrya@gmail.com>"

RUN apt-get update
RUN apt-get install -y git

# node
RUN apt-get install -y nodejs
RUN apt-get install -y npm

# copy whole kepler.gl app and run install
WORKDIR /kepler.gl
COPY . .
RUN npm install

# copy kepler.gl demo app and run install
WORKDIR /kepler.gl/examples/demo-app
RUN npm install

ENV PATH "$PATH:/kepler.gl/examples/demo-app/node_modules/.bin"

EXPOSE 80

CMD ["webpack-dev-server", "--progress", "--port", "80", "--host", "0.0.0.0"]