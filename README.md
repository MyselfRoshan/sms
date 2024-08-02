# Web App in Java with JSP and Servelet

## Tomcat in VS Code
- [Tutorial 1](https://www.youtube.com/watch?v=RiPot1ne8rI)
- [Tutorial 2](https://www.youtube.com/watch?v=CqSW7T2-E1Q)

## Add the following in the pom.xml
```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.8.0</version>
  <configuration>
    <source>1.8</source>
    <target>1.8</target>
  </configuration>
</plugin>
```
## Add the following srvelet dependency in the pom.xml
```xml
<dependency>
      <groupId>jakarta.platform</groupId>
      <artifactId>jakarta.jakartaee-api</artifactId>
      <version>11.0.0-M4</version>
</dependency>
```

## Right Click in maven project and execute install command to generate _target folder_ or enter the following command
```bash
mvn install
```
Or,
```bash
mvn clean install
```
## Copy the target/<project folder> to .../tomcat/webapps/<project folder> in  _docker-compose.yml_
```yml
services:
  tomcat:
  ....
  volumes:
    - ./target/sms:/usr/local/tomcat/webapps/sms
```