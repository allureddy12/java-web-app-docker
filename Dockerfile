FROM tomcat:8.0.20-jre8
# Dummy text to test 
MAINTAINER ashok
COPY *.war /usr/local/tomcat/webapps/java-web-app.war
EXPOSE 8080
