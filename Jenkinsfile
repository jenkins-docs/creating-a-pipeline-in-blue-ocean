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
        sh 'npm install'
      }
    }

    stage('Test') {
      steps {
        // simple test script
        sh './jenkins/scripts/test.sh'
      }
    }

    stage('Deliver') {
      steps {
        sh './jenkins/scripts/deliver.sh'
        // User interactive gate
        input 'Finished using the web site? (Select "Proceed" to continue)'
        sh './jenkins/scripts/kill.sh'
      }
    }
    post {
      success {
        echo "All completed"
      }
    }
  }
  
  environment {
    CI = 'true'
  }
}