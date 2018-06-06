FROM tomcat

MAINTAINER ardy.dedase@gmail.com

ADD Toll_Plaza_Project.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]