FROM ubuntu

RUN apt-get update && apt-get install -y vim 

COPY ubuntu18_install_ansible.sh .

RUN chmod 777 ubuntu18_install_ansible.sh 

RUN ./ubuntu18_install_ansible.sh

COPY . /ansibles/






