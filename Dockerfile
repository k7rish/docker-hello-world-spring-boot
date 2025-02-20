# Maven build container 

#FROM maven:3.8.5-openjdk-11 AS maven_build

#COPY pom.xml /tmp/

#COPY src /tmp/src/

#WORKDIR /tmp/

#RUN mvn package

#pull base image

FROM 605580347753.dkr.ecr.ap-south-1.amazonaws.com/node:latest

#maintainer 
MAINTAINER dstar55@yahoo.com
#expose port 8080
EXPOSE 8080
COPY /target/hello-world-0.1.0.jar /data/hello-world-0.1.0.jar
#default command
CMD java -jar /data/hello-world-0.1.0.jar

#copy hello world to docker image from builder image

#COPY --from=maven_build /tmp/target/hello-world-0.1.0.jar /data/hello-world-0.1.0.jar
