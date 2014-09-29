FROM      java:8
MAINTAINER Scot Baldry <scot.baldry@gmail.com>
RUN mkdir /home/demoapp
RUN mkdir /home/logs
WORKDIR /home/demoapp

RUN wget http://172.17.42.1:8081/artifactory/simple/libs-snapshot-local/com/scotbaldry/demo/1.2-SNAPSHOT/demo-1.2-20140928.235039-1.tar.gz
RUN gzip -d demo-1.2-20140928.235039-1.tar.gz
RUN tar -xvf demo-1.2-20140928.235039-1.tar
