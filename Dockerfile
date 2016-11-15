FROM java:7

MAINTAINER Docker Training <education@docker.com>

COPY src /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld

RUN mkdir bin

ENV APP_REL="1.1" SERV_REL="1.1"

RUN javac -d bin src/JavaHelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "JavaHelloWorld"]
