#Build stage
FROM gradle:latest AS BUILD
WORKDIR /usr/app/
COPY . .
RUN gradle clean build

# Package stage
FROM openjdk:latest
ENV JAR_NAME=java-docker-experiments-1.0.jar
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
COPY --from=BUILD $APP_HOME .
ENTRYPOINT exec java -jar $APP_HOME/build/libs/$JAR_NAME