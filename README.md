```bash
keytool -genkey -alias tomcat -storetype PKCS12 -keyalg RSA -keysize 2048 -keystore keystore.p12 -validity 3650 -storepass changeme 

mvn clean package -DskipTsets=true
java -jar target/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar
curl -k https://localhost:8443/ping
```