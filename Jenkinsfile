pipeline {
  agent {
    docker {
      image 'node:lts-alpine'
      // Required to access app from host machine
      args '-p 3000:3000'
    }

  }
  stages {
    stage('Build') {
      steps {
        // Restoring packages
        sh 'npm install'
      }
    }

    stage('Test') {
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }

    stage('Deliver') {
      steps {
        sh './jenkins/scripts/deliver.sh'
        input 'Finished using the web site? (Select "Proceed" to continue)'
        sh './jenkins/scripts/kill.sh'
      }
    }

  }
  environment {
    CI = 'true'
  }
}