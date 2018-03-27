pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3001:3001'
    }
    
  }
  stages {
    stage('Sonar Quality') {
      steps {
        echo 'sonar'
      }
    }
    stage('Build Validation') {
     
      parallel {
        stage('Selective CI Validation') {     
          steps {
              echo 'working'
            }
          }
          stage('Review Deployment Checklist') {
            agent none
            steps {
              input(id: 'Proceed1', message: 'Was this successful?', parameters: [
                  [$class: 'BooleanParameterDefinition', defaultValue: true, description: '', name: 'Please confirm you agree with this'],
                   [$class: 'TextParameterDefinition', defaultValue: 'uat', description: 'Environment', name: 'env'],
                   [$class: 'TextParameterDefinition', defaultValue: 'uat1', description: 'Target', name: 'target']
                   ])
            }
            
          }
        }
      }
      stage('Merge Pull Request') {
        steps {
          echo 'merge pull request'
        }
      }
      stage('Validate Build') {
        steps {
          echo 'validate build'
        }
      }

      stage('Full CI Validation') {
        steps {
          echo 'Full CI'
        }
      }
      stage('Request Deploy to QA') {
        steps {
          input 'hello'
        }
      }
      stage('Deploy to QA') {
        steps {
          input 'waiting'
        }
      }
      stage('Testing Evidence') {
        steps {
          echo 'testings'
        }
      }
    }
  }
