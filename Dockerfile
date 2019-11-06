FROM openjdk:8
# target/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar
ENV APP_HOME /dockerapp
COPY target/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar  $APP_HOME/app/
WORKDIR $APP_HOME
RUN keytool -genkey -alias tomcat -storetype PKCS12 -keyalg RSA -keysize 2048 -keystore keystore.p12 -validity 3650 -storepass changeme -noprompt -dname "CN=dmilan.com, OU=ID, O=DMILAN, L=Atlanta, S=Georgia, C=US" 

ENTRYPOINT ["java"]
CMD ["-jar", "app/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar"]
