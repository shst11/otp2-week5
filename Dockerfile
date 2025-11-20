# Use official Maven image
FROM maven:latest

# Set working directory
WORKDIR /app

# Copy Maven configuration and source code
COPY pom.xml .
COPY src ./src

# Build the project (skip tests to speed up build)
RUN mvn clean package -DskipTests

# Copy the built JAR to a standard name
RUN cp target/week-5-1.0-SNAPSHOT.jar App.jar

# Run the application
CMD ["java", "-jar", "/app/App.jar"]
