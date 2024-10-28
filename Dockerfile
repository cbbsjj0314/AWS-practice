# 현재 사용 중인 sdk에 맞춰 수정
FROM amazoncorretto:18.0.2
ARG JAR_FILE_PATH=build/libs/cbbsjj-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE_PATH} cbbsjj-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "cbbsjj-0.0.1-SNAPSHOT.jar", "-Dspring.profiles.active=local"]


### 기존 코드
# FROM adoptopenjdk/openjdk11
# CMD ["./mvnm", "clean", "package"]  # JAR 파일이 없는 경우, 소스 코드를 기반으로 jar을 생성하는 코드라고 함
                                      # 근데 gradle로 빌드하는 것 같은데 왜 ./gradlew가 아니라 ./mvnm을 사용하는 걸까?
# ARG JAR_FILE_PATH=build/libs/cbbsjj-0.0.1-SNAPSHOT.jar
# COPY ${JAR_FILE_PATH} cbbsjj-0.0.1-SNAPSHOT.jar
# ENTRYPOINT ["java", "-jar", "cbbsjj-0.0.1-SNAPSHOT.jar", "-Dspring,profiles.active=local"]