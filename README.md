# Ansible-Sample-Project

This project aims to give a guide to get you started with ansible. We will setup a host linux machine on AWS and configure nginx server using Ansible.
This projects expects sound understanding of AWS environment.
### Prerequisite:

You need following to get started with this project:
1. Docker
2. Aws account

### How to run:

* Build Docker container using `docker build -t ansible .`
* Initialize container using `docker run -it ansible`
* Declare environment variables inside the container using following commands.
* export AWS_ACCESS_KEY_ID='Your Access Key'
* export AWS_SECRET_ACCESS_KEY='Your Secret Access Key'
* Create Linux webhost on AWS using following command. you can set password of your choice. Do not forget the password we will need that in following steps.
* `ansible-playbook aws_create_linux_ec2_instance.yml`
* Go to your instances in aws account you should see an instance running on the account. Copy public ip address of the instance and run following command.
* `ansible-playbook ping.yml -i Public-Ip-Address,`
* This will check wether your connection has been established or not.
* Now we will configure nginx server inside the linux host. 
* Default username is `ansible`
* `ansible-playbook configure_nginx_web_server.yml -i Public-Ip-Address,`
* `curl Public-Ip-Address`
