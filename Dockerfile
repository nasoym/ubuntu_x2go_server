FROM nasoym/docker_ubuntu_sshd
MAINTAINER Sinan Goo

RUN echo "deb http://ppa.launchpad.net/x2go/stable/ubuntu xenial main" >> /etc/apt/sources.list
RUN echo "deb-src http://ppa.launchpad.net/x2go/stable/ubuntu xenial main" >> /etc/apt/sources.list
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:x2go/stable && apt-get update
RUN apt-get install -y x2goserver x2goserver-xsession

CMD ["service x2goserver start; /usr/sbin/sshd -D"]

