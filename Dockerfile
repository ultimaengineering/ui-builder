FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt install npm nodejs python2 -y
