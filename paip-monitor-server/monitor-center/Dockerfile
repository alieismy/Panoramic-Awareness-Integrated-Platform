#FROM openjdk:8-jre-slim/openjdk:8-jre/openjdk:latest/java:8
FROM openjdk:8-jdk-alpine
LABEL maintainer="L.J <JiangLie@Hotmail.com>" version="3.0.0"

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /home/paip

EXPOSE  6500

#ARG JAR_FILE=target/*.jar, 这里为了适配Jenkins Pipeline, 单独编译用注释的
ARG JAR_FILE=paip-monitor-server/monitor-center/target/*.jar
COPY ${JAR_FILE} /application.jar

ENV JAVA_OPTS="-Xms256m -Xmx512m -Xmn128m -XX:-UseBiasedLocking -XX:-UseCounterDecay -XX:AutoBoxCacheMax=2000 -XX:+PerfDisableSharedMem -XX:+AlwaysPreTouch -Djava.security.egd=file:/dev/./urandom"
ENTRYPOINT ["/bin/sh","-c","java $JAVA_OPTS -jar /application.jar"]
