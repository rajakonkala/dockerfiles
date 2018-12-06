FROM tomcat:8.0.20-jre8

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget

EXPOSE 8080

CMD /usr/local/tomcat/bin/catalina.sh run
COPY target/**/*.war /usr/local/tomcat/webapps
