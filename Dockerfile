# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from your build directory to the container
COPY target/*.jar app.jar

# Expose the application port (change as needed)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
