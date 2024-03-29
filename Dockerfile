FROM registry.access.redhat.com/ubi8/ubi-minimal:8.5
MAINTAINER SrinivasMurari

RUN microdnf install --nodocs java-11-openjdk-headless && microdnf clean all

WORKDIR /work/
COPY target/*.jar /work/application.jar

EXPOSE 8080
CMD ["java", "-jar", "application.jar"]
