FROM openjdk:8-jre-alpine3.9

RUN useradd -ms /bin/bash newuser

USER newuser

COPY my-app/target/m*.jar /my-app.jar
CMD ["java", "-jar", "/my-app.jar"]
