FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y curl iputils-ping wget git