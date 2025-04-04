# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/my-app-1.0-SNAPSHOT.jar /app/myapp.jar

# Expose the application port (change as needed)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "myapp.jar"]

