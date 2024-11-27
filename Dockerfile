# JDK 17 이미지를 기반으로 설정
FROM openjdk:17-jdk-slim

# 작업 디렉토리 설정
WORKDIR /app

# Gradle 빌드 결과물인 JAR 파일을 복사
COPY build/libs/*.jar app.jar

# 컨테이너 포트 설정 (Spring Boot 기본 포트: 8080)
EXPOSE 8080

# 애플리케이션 실행 명령
ENTRYPOINT ["java", "-jar", "app.jar"]
