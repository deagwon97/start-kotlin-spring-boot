FROM gradle:7-jdk11 AS builder
COPY --chown=gradle:gradle ./src /root/workdir/src
WORKDIR /root/workdir/src

RUN apt update -y &&\
    apt upgrade -y &&\
    apt install zip unzip -y &&\
    curl -s "https://get.sdkman.io" | bash

RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && \
    yes | sdk install kotlin"

RUN gradle build

FROM openjdk:11
EXPOSE 8080:8080
RUN mkdir /app
COPY --from=builder /root/workdir/project/build/libs/*.jar /app/ktor-docker-sample.jar
ENTRYPOINT ["java","-jar","/app/ktor-docker-sample.jar"]