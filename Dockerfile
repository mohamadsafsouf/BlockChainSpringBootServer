# Use lightweight OpenJDK base image
FROM openjdk:17-jdk-slim

# Create app directory
WORKDIR /app

# Copy the jar file into the container
COPY BlockchainSpringBoot.jar app.jar

# Expose the port used by Spring Boot
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
