# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

# specifies the directory where the command will be executed when you run a container based on the resulting image.
WORKDIR /app

# Any subsequent RUN, CMD, ENTRYPOINT, COPY, and ADD instructions will be executed in /app
COPY build/libs/*.jar /app/

CMD ["java", "-jar", "*.jar"]