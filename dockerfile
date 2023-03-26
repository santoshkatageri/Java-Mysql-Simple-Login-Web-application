FROM maven AS build
WORKDIR /app
COPY . /app/
RUN mvn dependency:go-offline
RUN mvn -f /app/pom.xml clean install package
FROM tomcat 
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/java-webapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
