FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

# # USE ROOT USER TO RUN THE APP FOR SECURITY REASONS
# RUN addgroup -S demo && adduser -S demo -G demo
# USER demo