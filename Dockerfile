FROM ubuntu:noble

COPY . /gdart

WORKDIR /gdart

RUN apt-get update && apt-get install -y git python3 python3-venv python3-pip cmake build-essential openjdk-17-jdk 
RUN apt-get install -y maven

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

RUN ./build.sh