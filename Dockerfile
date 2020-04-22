# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre
FROM openjdk:8
EXPOSE 8080
ADD target/umang-docker-poc.jar umang-docker-poc.jar
# Refer to Maven build -> finalName
#ARG JAR_FILE=target/umang-docker-poc.jar

# cd /opt/app
#WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
#COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","/umang-docker-poc.jar"]
