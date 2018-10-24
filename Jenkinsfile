pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Build'
      }
    }
    stage('Test') {
      environment {
        CI = 'true'
      }
      steps {
        echo 'test'
      }
    }
    stage('Deliver') {
      steps {
        echo 'Deliver'
      }
    }
  }
}
