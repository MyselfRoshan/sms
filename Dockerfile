# FROM tomcat:10.1.26-jdk21
FROM tomcat:jdk21


# Copy all from webapps.dist to webapps
# RUN ls -al /usr/local/tomcat/webapps.dist
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
# RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

COPY target/sms.war /usr/local/tomcat/webapps/
# Copy configuration files
COPY conf/Catalina/localhost/manager.xml /usr/local/tomcat/conf/Catalina/localhost/manager.xml
COPY conf/context.xml /usr/local/tomcat/conf/context.xml
COPY conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY conf/web.xml /usr/local/tomcat/conf/web.xml

# Ensure the correct permissions are set
# RUN chmod -R 755 /usr/local/tomcat/webapps
# RUN chmod -R 755 /usr/local/tomcat/webapps && \
    # chown -R 1000:1000 /usr/local/tomcat/webapps

# Use the default Tomcat entrypoint
CMD ["catalina.sh", "run"]
# CMD ["/usr/local/tomcat/bin/catalina.sh", "deploy", "--path", "/sms", "--war" "/sms.war"]
