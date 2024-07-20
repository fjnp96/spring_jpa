# Stage 1: Build stage
FROM arm32v7/openjdk:17-jdk-alpine as build
LABEL authors="Fernando Prates"
LABEL image="spring_jpa"

# Install bash and other required packages
RUN apk add --no-cache bash dos2unix

# Set the working directory in the container
WORKDIR /app

# Copy the Gradle wrapper and build files
COPY gradlew /app/gradlew
COPY gradle /app/gradle
COPY build.gradle /app/build.gradle
COPY settings.gradle /app/settings.gradle

# Copy the source code
COPY src /app/src
COPY init_scripts /app/init_scripts

# Convert line endings of gradlew to Unix format and grant execution rights
RUN dos2unix /app/gradlew && chmod +x /app/gradlew

# Run the Gradle build to create the JAR file
RUN ./gradlew build

# Stage 2: Create the final image
FROM arm32v7/openjdk:17-jdk-alpine
LABEL authors="Fernando Prates"
LABEL image="spring_jpa"

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/build/libs/*.jar /app/spring_jpa.jar

# Expose the port that your Spring Boot application will listen on
EXPOSE 8080

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "spring_jpa.jar"]