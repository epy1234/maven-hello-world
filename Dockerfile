FROM openjdk:8-jre-alpine3.9

RUN useradd -u 8877 john
USER john

COPY my-app/target/m*.jar /my-app.jar
CMD ["java", "-jar", "/my-app.jar"]
