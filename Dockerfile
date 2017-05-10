FROM index.alauda.cn/library/centos:6.7
MAINTAINER Mark "kevin.zwf@gmail.com"
RUN yum install -y java-1.8.0-openjdk 
ADD apache-tomcat-8.5.14 /usr/local/apache-tomcat-8.5.14
ADD hellocode /usr/local/apache-tomcat-8.5.14/webapps/
EXPOSE 8080
ENTRYPOINT ["/usr/local/apache-tomcat-8.5.14/bin/startup.sh"]
