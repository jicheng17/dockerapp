#FROM maven:3.5-jdk-8-alpine
#WORKDIR /app
#COPY . /app
#RUN mvn install

FROM java:8
WORKDIR /app
COPY ./target/docker-1.0-SNAPSHOT.jar /app/docker-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "/app/docker-1.0-SNAPSHOT.jar"]

#
#