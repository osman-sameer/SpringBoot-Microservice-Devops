pipeline {
    agent any
    tools{
        maven 'Maven'
    }
    stages{
        stage('Build Maven'){
            steps{
               checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/osman-sameer/SpringBoot-Microservice-Devops']]])
               bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t osmansameer91/springboot-restful-webservices .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                    //withCredentials([string(credentialsId: 'docpwd-id', variable: 'docpwd')]) {
                        bat 'docker login -u osmansameer91 -p Kurama@99#'
                   // }
                    bat 'docker push osmansameer91/springboot-restful-webservices'
                }
            }
        }
    }
}