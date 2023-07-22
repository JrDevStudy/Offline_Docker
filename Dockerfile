FROM openjdk:17-alpine
#ARG JAR_FILE=build/libs/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

# OpenJDK 17 이미지 설정
#FROM rsunix/yourkit-openjdk17
# 컨테이너가 시작될 때 실행될 명령어 설정
CMD ["./gradle", "clean", "build"]
# JAR 파일의 경로를 저장하기 위한 인자 정의
ARG JAR_FILE_PATH=build/libs/*.jar
# 빌드 컨텍스트에서 JAR 파일을 컨테이너로 복사
COPY ${JAR_FILE_PATH} app.jar
# Java 애플리케이션을 실행하기 위한 진입점 명령어 설정
ENTRYPOINT ["java", "-jar", "app.jar"]