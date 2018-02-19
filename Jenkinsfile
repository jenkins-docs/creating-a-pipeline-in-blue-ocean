pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3000:3000'
    }
    
  }
  stages {
    stage('Sonar Check') {
      steps {
        sh 'npm install'
      }
    }
    stage('Unit Test %') {
      environment {
        CI = 'true'
      }
      steps {
        echo 'demo'
      }
    }
    stage('Validate Against Sandbox') {
      parallel {
        stage('Validate Against Sandbox') {
          steps {
            sh './jenkins/scripts/deliver.sh '
            input(id: 'Proceed1', message: 'Was this successful?', parameters: [
                                                  [$class: 'BooleanParameterDefinition', defaultValue: true, description: '', name: 'Please confirm you agree with this'],
                                                  [$class: 'TextParameterDefinition', defaultValue: 'uat', description: 'Environment', name: 'env'],
                                                  [$class: 'TextParameterDefinition', defaultValue: 'uat1', description: 'Target', name: 'target']
                                                  ])
              sh './jenkins/scripts/kill.sh'
            }
          }
          stage('Review Deployment Checklist') {
            steps {
              echo 'working'
            }
          }
        }
      }
    }
  }