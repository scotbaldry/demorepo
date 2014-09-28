FROM      java:8
MAINTAINER Scot Baldry <scot.baldry@gmail.com>
RUN mkdir /home/demoapp
RUN mkdir /home/logs
WORKDIR /home/demoapp

RUN wget http://172.17.42.1:8081/artifactory/simple/libs-snapshot-local/com/scotbaldry/demo/1.1-SNAPSHOT/demo-1.1-20140928.013820-1.jar