# FROM tomcat:10.1.26-jre21

# ENV DB_RESOURCE_NAME="jdbc/helloworld" DB_URL="" DB_USERNAME="" DB_DRIVER_CLASS_NAME=""
# ENV DB_PASSWORD_FILE="secrets/db-password"
# ENV MANAGER_PASSWORD_FILE="secrets/manager-password"

# COPY conf/context.xml conf/tomcat-users.xml ./conf/
# COPY webapps/manager/META-INF/context.xml ./webapps/manager/META-INF/context.xml
# COPY src/main/webapp/WEB-INF/web.xml ./webapps/sms/src/main/webapp/WEB-INF/web.xml
# COPY webapps/sms/src/main/webapp/WEB-INF/web.xml ./webapps/sms/src/main/webapp/WEB-INF/web.xml

# COPY run-catalina.sh /run-catalina.sh
# RUN chmod +x /run-catalina.sh

# CMD ["catalina.sh", "run"]

# New

FROM tomcat:10.1.26-jre21

# Copy configuration files
# COPY conf/context.xml /usr/local/tomcat/conf/context.xml
COPY conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
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
