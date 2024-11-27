# Build stage
FROM --platform=linux/amd64 eclipse-temurin:17-jdk-jammy as build

WORKDIR /workspace/app

COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src

RUN chmod +x gradlew
RUN ./gradlew build -x test

# Run stage
FROM --platform=linux/amd64 eclipse-temurin:17-jre-jammy

WORKDIR /app

COPY --from=build /workspace/app/build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
