pipeline{
environment {
    registry = "shukabr1/docker-test"
    registryCredential = 'dockerhub'
dockerImage = ''
 }
    agent any
    stages{
stage('Building image') {
      steps{
        script {
          dockerImage = docker.build("shukabr1/docker-test")
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( 'https://registry.hub.docker.com', 'dockerhub' ) {
            dockerImage.push("${env_BUILD_NUMBER}")
          }
        }
      }
    }
               
}}
