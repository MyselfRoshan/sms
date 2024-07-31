FROM tomcat:10.1.26-jdk21

# Copy configuration files
# COPY conf/context.xml /usr/local/tomcat/conf/context.xml
# COPY conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
# COPY conf/server.xml /usr/local/tomcat/conf/server.xml

# Copy the web application
COPY src/main/webapp /usr/local/tomcat/webapps/sms

# Copy all from webapps.dist to webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

# Ensure the correct permissions are set
# RUN chmod -R 755 /usr/local/tomcat/webapps
RUN chmod -R 755 /usr/local/tomcat/webapps && \
    chown -R 1000:1000 /usr/local/tomcat/webapps

# Use the default Tomcat entrypoint
CMD ["catalina.sh", "run"]
