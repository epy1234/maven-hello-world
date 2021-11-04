FROM openjdk:8-jre-alpine3.9

COPY my-app/target/m*.jar /my-app.jar
CMD ["java", "-jar", "/my-app.jar"]
