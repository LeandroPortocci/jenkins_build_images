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
          sh "docker build -t webserver:v1"
        }
      }
    }

    stage('Deploying App to Kubernetes') {
      steps {
        script {
          echo "INFO: Deploying App to Kubernetes" 
          sh "docker rm -f webserver || true"
          sh "docker container run -d --name webserver -p 6161:80 webserver:v1"
          }
      }
    }

  }

}
