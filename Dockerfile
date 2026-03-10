FROM openjdk:17
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN ./mvnw package -DskipTests || mvn package -DskipTests
EXPOSE 8050
CMD ["java", "-jar", "target/springboot-devops-0.0.1-SNAPSHOT.jar"]