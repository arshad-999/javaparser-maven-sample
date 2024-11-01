# Use a lightweight base image
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Copy the application files
COPY target/maven-cloudaseem-app.war /app/

# Expose the port
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "/app/maven-cloudaseem-app.war"]
