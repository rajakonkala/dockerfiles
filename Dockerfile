FROM tomcat:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget



CMD /usr/local/tomcat/bin/catalina.sh start
#COPY /home/vmadmin/Desktop/project/javabuild/target/javabuild.war /usr/local/tomcat/webapps
EXPOSE 8000
