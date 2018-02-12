pipeline {
  agent {
    docker {
      image 'node:6-alpine'
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
      environment {
        CI = 'true'
      }
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }
    stage('Deliver') {
      parallel {
        stage('Deliver') {
          steps {
            sh './jenkins/scripts/deliver.sh '
            input(
        id: 'Proceed1', message: 'Was this successful?', parameters: [
        [$class: 'BooleanParameterDefinition', defaultValue: true, description: '', name: 'Please confirm you agree with this']
        ])
            sh './jenkins/scripts/kill.sh'
          }
        }
        stage('Another Stage') {
          steps {
            echo ('working')
            
          }
        }
      }
    }
  }
}
