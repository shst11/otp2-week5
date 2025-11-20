# Use official Maven image to build the project
FROM maven:latest AS build

# Set working directory
WORKDIR /app

# Copy Maven files and source code
COPY pom.xml .
COPY src ./src

# Build the JAR
RUN mvn clean package -DskipTests

# Use a smaller JDK image for runtime
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /app/target/week-5-1.0-SNAPSHOT.jar /app/App.jar

# Run the application
CMD ["java", "-jar", "/app/App.jar"]
