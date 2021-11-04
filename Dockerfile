FROM openjdk:8-jre-alpine3.9
# adduser -D -g '' app
# RUN adduser -ms /bin/bash newuser
RUN adduser newuser
USER newuser

COPY my-app/target/m*.jar /my-app.jar
CMD ["java", "-jar", "/my-app.jar"]
