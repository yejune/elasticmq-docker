FROM       ubuntu:16.04
MAINTAINER Behance RE

RUN sudo apt-get update && apt-get install default-jre -y

ADD  https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.13.2.jar /elasticmq/elasticmq.jar
ADD  run.sh /elasticmq/run.sh
RUN  chmod +x /elasticmq/run.sh

EXPOSE 9324

ENTRYPOINT ["/elasticmq/run.sh"]
