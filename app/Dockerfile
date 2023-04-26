FROM docker.io/maven:3.8.6-jdk-11 AS build  
COPY app/src ./src
COPY app/pom.xml  .pom.xml
RUN mvn -f .pom.xml clean package

FROM docker.io/tomcat:9.0.48-jdk11-openjdk-slim
COPY --from=build target/sample-web-app.war /usr/local/tomcat/webapps/sample-web-app.war
EXPOSE 8080
