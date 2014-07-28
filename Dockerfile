# VERSION 1.0.2 

FROM dockerfile/java
MAINTAINER Ming-der Wang <ming@katdc.com>

# install mediawalker2, which is a stack with karaf + hawtio + camel
RUN apt-get update -qq && apt-get install -y wget
RUN \
  cd /tmp && \
  wget --no-check-certificate https://s3-ap-northeast-1.amazonaws.com/8292013mw/karaf/release/2.3.5/v1.0.2/apache-karaf-2.3.5.tar.gz && \
  tar xvfz apache-karaf-2.3.5.tar.gz && \
  rm -f apache-karaf-2.3.5.tar.gz && \
  mv apache-karaf-2.3.5 /mediawalker2

EXPOSE 8181
#you can export any other port for ActiveMQ or JMX, etc.
#EXPOSE 1099 8101 44444 8181

RUN echo "==========================================================================================================================="
RUN echo "Usage: docker run -it -p 8181:8181 -v /mediawalker2/deploy -v `pwd`:/mediawalker2/data -w /mediawalker2/deploy mingderwang/mediawalker2-karaf"
RUN echo "wait for a couple minutes, and then surf http://<ip address>:8181/hawtio"
RUN echo "login username: karaf, password: karaf."
RUN echo "==========================================================================================================================="
ENTRYPOINT ["/mediawalker2/bin/karaf"]

# LICENSE MIT
