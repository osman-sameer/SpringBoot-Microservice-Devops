FROM openjdk:19
EXPOSE 8080
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT["Java","-jar","/devops-integration.jar"]