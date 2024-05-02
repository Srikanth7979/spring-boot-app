# Use official OpenJDK image as the base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY target/my-spring-boot-app.jar /app/app.jar

# Expose port 8080 (or any other port your Spring Boot application listens on)
EXPOSE 8081

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
