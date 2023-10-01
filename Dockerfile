FROM openjdk:17-alpine
#FROM ubuntu:latest
LABEL authors="Fernando Prates"
LABEL image="spring_jpa"
# Use an official OpenJDK 17 runtime as the base image
# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY build/libs/*.jar /app/spring_jpa.jar

# Copy the MySQL JDBC driver JAR into the container
COPY path/to/mysql-connector-java-8.0.23.jar ./mysql-connector-java.jar

# Expose the port that your Spring Boot application will listen on
EXPOSE 8080

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "spring_jpa.jar"]