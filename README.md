```bash
keytool -genkey -alias tomcat -storetype PKCS12 -keyalg RSA -keysize 2048 -keystore keystore.p12 -validity 3650 -storepass changeme -noprompt -dname "CN=dmilan.com, OU=ID, O=DMILAN, L=Atlanta, S=Georgia, C=US" 

mvn clean package -DskipTsets=true
java -jar target/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar
curl -k https://localhost:8443/ping
```

## To Run as docker
```
docker build -t dmilan/spring-boot-rest-ssl-example .
docker run -p 8443:8443 dmilan/spring-boot-rest-ssl-example -jar app/spring-boot-rest-ssl-example-0.0.1-SNAPSHOT.jar
```
