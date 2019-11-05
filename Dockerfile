FROM openjdk:8
# target/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar
ENV APP_HOME /dockerapp
COPY target/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar  $APP_HOME/app/
WORKDIR $APP_HOME
ENTRYPOINT ["java"]
CMD ["-jar", "app/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar"]
