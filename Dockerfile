FROM amazoncorretto:11

COPY target/hello-world.jar hello-world.jar

ENTRYPOINT ["java", "-jar", "hello-world.jar"]
