FROM docker.io/library/maven:3.6.1-jdk-11
COPY ..
RUN mvn clean verify
CMD ["java", "-jar", "target/credit-service-0.0.1-SNAPSHOT.jar"]
