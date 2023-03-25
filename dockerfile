FROM tomcat

ADD target/*.war /usr/local/tomcat/webapps/LoginWebApp.war
