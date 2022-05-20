FROM tomcat:jre8-alpine

ADD target/LoginWebApp.war /usr/local/tomcat/webapps/LoginWebApp.war
