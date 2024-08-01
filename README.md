Tomcat in Vs code tutotial: https://www.youtube.com/watch?v=RiPot1ne8rI
                            https://www.youtube.com/watch?v=CqSW7T2-E1Q
Add the following in the pom.xml
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