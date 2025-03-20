# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file from the build stage
COPY target/simple-java-app-1.0-SNAPSHOT.jar /app/simple-java-app.jar

# Run the JAR file
CMD ["java", "-jar", "simple-java-app.jar"]

