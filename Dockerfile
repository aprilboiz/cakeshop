FROM gradle AS build

WORKDIR /app

COPY build.gradle /app
COPY settings.gradle /app
COPY src /app/src

RUN gradle clean build --no-daemon -x test

FROM openjdk:21 AS runtime

WORKDIR /app

COPY --from=build /app/build/libs/cake-shop-0.0.1-SNAPSHOT.jar /app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]