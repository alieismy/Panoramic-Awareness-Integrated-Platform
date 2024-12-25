FROM openjdk:8-jre-slim
MAINTAINER xuxueli

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE  8081

#ADD target/xxl-job-admin-*.jar /application.jar
ARG JAR_FILE=paip-job/job-admin/target/*.jar
COPY ${JAR_FILE} /application.jar

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /application.jar $PARAMS"]