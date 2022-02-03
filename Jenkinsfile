pipeline {
  
   agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/LeandroPortocci/jenkins_build_images.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          echo "INFO: Building Docker Image"
          sh "docker build -t web-server:v1"
        }
      }
    }

    stage('Deploying App to Kubernetes') {
      steps {
        script {
          echo "INFO: Deploying App to Kubernetes" 
          
          }
      }
    }

  }

}
