FROM openjdk:8 as build

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src
RUN ./mvnw clean package


FROM openjdk:8
EXPOSE 8080
WORKDIR /app
COPY --from=build /app/target/jersey-docker.jar ./jersey-docker.jar
CMD ["java", "-jar", "jersey-docker.jar"]
