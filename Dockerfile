FROM openjdk:11
ARG JAR_FILE=productservice-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} productservice.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","/productservice.jar"]
