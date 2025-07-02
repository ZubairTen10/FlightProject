# Stage 1 Build
FROM maven:3.9.6-eclipse-temurin AS build
WORKDIR /app
# Include pom.xml
COPY pom.xml .
# cpy source code
COPY src ./src
# build Spring Boot app
RUN mvn clean package -DskipTests

# Stage 2 Run
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
