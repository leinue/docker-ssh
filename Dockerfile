FROM ivydom/ssh
MAINTAINER ivy 'xieyang@dodora.cn'

RUN apt-get update

RUN echo 'root:123456' | chpasswd
ENTRYPOINT service ssh start && /bin/bash
