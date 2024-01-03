#Build Stage 
FROM maven:3.6.0-jdk-8-alpine

#CMD ["maven","pom.xml"]


COPY src /sample/src
COPY pom.xml /sample

RUN mvn -f /sample/pom.xml clean test

WORKDIR /sample
#RUN Stage
#Below is working
#ENTRYPOINT mvn -f /sample/pom.xml clean test
#Below is working
#ENTRYPOINT ["mvn","clean","test"]
#This Below is working
CMD ["mvn","clean","test"]



