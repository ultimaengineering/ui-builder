FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt install python2 curl gnupg -y
RUN curl -sL https://deb.nodesource.com/setup_15.x  | bash -
