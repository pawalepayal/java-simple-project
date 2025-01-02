FROM openjdk:11-jre 

WORKDIR /app

COPY .  .

RUN mvn clean install
RUN mvn test

EXPOSE 8080

CMD ["java", "-jar", "target/java-simple-project.jar"]
