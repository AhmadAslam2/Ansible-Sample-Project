FROM ubuntu:20.04

RUN apt-get update &&\
    apt-get install python3.6 -y &&apt install python3-pip -y &&\
    pip install --upgrade pip && pip install ansible
