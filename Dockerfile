# Use a base image with Java installed
FROM openjdk:11-jre-slim
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy the jar file to the container
COPY target/my-java-app.jar /app/my-java-app.jar
 
# Command to run the jar file
ENTRYPOINT ["java", "-jar", "/app/my-java-app.jar"]