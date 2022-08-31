FROM openjdk:11

ARG PROFILE
ARG ADDITIONAL_OPTS

ENV PROFILE=${PROFILE}
ENV ADDITIONAL_OPTS=${ADDITIONAL_OPTS}

WORKDIR /opt/starts

COPY /target/starts*.jar starter.jar

SHELL ["/bin/sh", "-c"]

CMD java ${ADDITIONAL_OPTS} -jar starter.jar --spring.profiles.active=${PROFILE}