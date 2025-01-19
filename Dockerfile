# Use Maven image for build stage
FROM maven:3.9.4-eclipse-temurin-17 AS build

# Set working directory
WORKDIR /app

# Copy the project files
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package

# Use Playwright base image for final stage
FROM mcr.microsoft.com/playwright:v1.29.0-focal

# Install Java for Spring Boot
RUN apt-get update && apt-get install -y openjdk-17-jdk && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/target/cucumber-pw-0.0.1-SNAPSHOT.jar ./app.jar

# Expose the application port
EXPOSE 8080

# Default entrypoint for running the application
ENTRYPOINT ["java", "-jar", "./app.jar"]