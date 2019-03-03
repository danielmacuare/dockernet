FROM ubuntu:18.04

MAINTAINER Daniel Macuare, danielmacuare.uk@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping python build-essential \
    libssl-dev libffi-dev python-pip python3-pip python-setuptools python3-setuptools \
    python-dev net-tools python3 software-properties-common \
    && apt-add-repository -y ppa:ansible/ansible \
    && apt-get update && apt-get -y --no-install-recommends install ansible \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install virtualenv
    && virtualenv -p python3 net-dev
    && source /net-dev/bin/activate
    $$ pip3 install -r requirements.txt
