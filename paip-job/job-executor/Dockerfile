FROM openjdk:8-jre-slim
MAINTAINER xuxueli

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE  8082

#ADD target/xxl-job-executor-sample-springboot-*.jar /application.jar
ARG JAR_FILE=paip-job/job-executor/target/*.jar
COPY ${JAR_FILE} /application.jar

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /application.jar $PARAMS"]
