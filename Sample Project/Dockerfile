FROM ubuntu:latest

COPY . .

RUN apt-get update; \
    apt install openssh-client; \
    apt-get install -y wget curl apt-transport-https; \
    apt install -y python3-pip
   
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==2.9.12"; \
    pip3 install boto; \
    pip3 install boto3; \
    apt install -y sshpass