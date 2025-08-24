FROM openjdk:17-jdk-slim

WORKDIR /app

# Gradleの場合はjarファイルの場所が違う
COPY build/libs/my-java-app-1.0.0.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
