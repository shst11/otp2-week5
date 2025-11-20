# Use an official Maven image as a parent image
FROM maven:latest

# Set the working directory in the container
WORKDIR /app


COPY target/week-5-1.0-SNAPSHOT.jar /app/App.jar



# Run the main class (assuming your application has a main class)
CMD ["java", "-jar", "target/App.jar"]