From tomcat:latest
COPY target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh" , "run"]
