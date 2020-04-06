FROM openjdk:8-jre
MAINTAINER jmartinez <jomartid@everis.com>
COPY service-account.json /
#ENV GOOGLE_CLOUD_PROJECT terpel-dcem-apisrumbo-dev
ENV GOOGLE_CLOUD_PROJECT arquitectura-digital-everis
ENV GOOGLE_APPLICATION_CREDENTIALS /service-account.json
ADD demo-0.0.1-SNAPSHOT.jar demo.jar

USER 1001

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "demo.jar"]


