FROM index.alauda.cn/library/centos:latest
MAINTAINER Mark "kevin.zwf@gmail.com"
RUN yum update -y
RUN yum install -y java-1.8.0-openjdk 
ADD apache-tomcat-8.5.14 /usr/apache-tomcat-8.5.14
ADD hellocode /usr/apache-tomcat-8.5.14/webapps/hellocode
EXPOSE 8080
ENTRYPOINT ["/usr/apache-tomcat-8.5.14/bin/startup.sh"]
