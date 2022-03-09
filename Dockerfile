FROM docker.io/library/maven:3.6.1-jdk-11
COPY . .
RUN mvn clean verify
RUN chmod 777 /target/profile-service-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "target/profile-service-0.0.1-SNAPSHOT.jar"]
