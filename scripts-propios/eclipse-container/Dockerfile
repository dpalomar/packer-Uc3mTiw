FROM ubuntu:14.04
MAINTAINER David Palomar "dpalomar@gmail.com"

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list && \
    apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer libxext-dev libxrender-dev libxtst-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module

RUN wget http://dist.springsource.com/release/STS/3.8.1.RELEASE/dist/e4.6/spring-tool-suite-3.8.1.RELEASE-e4.6-linux-gtk-x86_64.tar.gz -O /tmp/spring-tool-suite-3.8.1.RELEASE.tar.gz -q && \
    echo 'Installing eclipse' && \
    tar -xf /tmp/spring-tool-suite-3.8.1.RELEASE.tar.gz -C /opt && \
    rm /tmp/spring-tool-suite-3.8.1.RELEASE.tar.gz

RUN mkdir -p /home/developer/workspace
RUN mkdir -p /home/developer/.eclipse

RUN  echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1000:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chmod 0777 /home/developer/workspace  && \
    chown developer:developer -R /home/developer && \
    chown developer:developer -R /home/developer/workspace && \
    chown developer:developer -R /home/developer/.eclipse&& \
    chown developer:developer -R /opt/sts-bundle/sts-3.8.1.RELEASE && \
    chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo

USER developer
ENV HOME /home/developer
ENV PATH /home/developer/eclipse:$PATH
WORKDIR /home/developer

CMD ["/opt/sts-bundle/sts-3.8.1.RELEASE/STS", "-data", "/home/developer/workspace"]