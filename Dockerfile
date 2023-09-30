FROM ubuntu:latest
LABEL authors="Fernando Prates"
# Use an official OpenJDK 17 runtime as the base image
FROM adoptopenjdk/openjdk17:alpine-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY target/spring_jpa.jar /app/spring_jpa.jar

# Expose the port that your Spring Boot application will listen on
EXPOSE 8080

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "spring_jpa.jar"]