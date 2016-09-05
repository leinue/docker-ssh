FROM ivydom/ssh
MAINTAINER ivy 'xieyang@dodora.cn'

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN npm install -g npm
RUN sudo ln -s `which nodejs` /usr/bin/node

RUN echo 'root:123456' | chpasswd
ENTRYPOINT service ssh start && /bin/bash
