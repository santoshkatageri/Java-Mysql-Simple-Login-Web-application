FROM maven
WORKDIR /app
COPY . /app/
RUN mvn -f /app/pom.xml clean install package
FROM tomcat
#COPY target/*.war /usr/local/tomcat/webapps/java-webapp.war
EXPOSE 8080
