# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

# specifies the directory where the command will be executed when you run a container based on the resulting image.
WORKDIR /app

# Copy the project files into the container
# Any subsequent RUN, CMD, ENTRYPOINT, COPY, and ADD instructions will be executed in /app
COPY . /app/

# Run the Gradle build command inside the container
RUN ./gradlew build

# Copy the JAR file from the build output directory to /app
RUN cp build/libs/docker-1.0-SNAPSHOT.jar /app/

CMD ["java", "-jar", "docker-1.0-SNAPSHOT.jar"]