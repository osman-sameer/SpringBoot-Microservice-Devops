FROM openjdk:19
EXPOSE 8080
ADD target/springboot-restful-webservices.jar springboot-restful-webservices.jar
ENTRYPOINT["java","-jar","/springboot-restful-webservices.jar"]