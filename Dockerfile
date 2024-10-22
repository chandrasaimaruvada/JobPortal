# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file built by Maven/Gradle to the container
COPY target/jobPortal.jar /app/jobPortal.jar

# Expose the port on which the Spring Boot app runs (default 8080)
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/jobPortal.jar"]
