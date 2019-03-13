FROM ubuntu:18.04

MAINTAINER Daniel Macuare, danielmacuare.uk@gmail.com

ENV LC_ALL en_GB.UTF-8
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB.UTF-8c

COPY ["./requirements.txt", "/home/requirements.txt"]

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends install \
    build-essential curl git iputils-ping locales locales-all libssl-dev libffi-dev mtr net-tools \
    nmap openssh-client python3 python3-pip python3-setuptools python python-dev python-pip \
    python-setuptools software-properties-common tcpdump tcptraceroute telnet vim \
    && apt-add-repository -y ppa:ansible/ansible \
    && apt-get update && apt-get -y --no-install-recommends install ansible \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && mkdir /root/.ssh \
    && pip3 install virtualenv \
    && virtualenv -p python3 net-dev \
    && /bin/bash -c "source /net-dev/bin/activate && pip3 install -r /home/requirements.txt" \
    && touch /root/.bash_aliases \
    && echo "alias net-dev='source /net-dev/bin/activate'" >> /root/.bash_aliases

VOLUME [ "/root", "/usr" ]

ENTRYPOINT [ "/bin/bash" ]
