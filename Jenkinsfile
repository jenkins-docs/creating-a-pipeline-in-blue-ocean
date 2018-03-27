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
          steps {
            input(id: 'Proceed1', message: 'Is the Deployment Checklist ok?', parameters: [
                                              [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm you agree with this'],
                                              [$class: 'TextParameterDefinition', defaultValue: 'Comments if false', description: 'Environment', name: 'env'],
                                                             ])
            }
          }
        }
      }
      stage('AutoMerge') {
        steps {
          echo 'merge pull request'
        }
      }
      stage('Full CI Validation') {
        steps {
          echo 'Full CI'
        }
      }
      stage('Manual Pre Deployment to QA') {
        steps {
          input(id: 'Proceed1', message: 'Are all Manual steps performed?', parameters: [
                                          [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm'],
                                          [$class: 'TextParameterDefinition', defaultValue: 'Comments if false', description: 'Environment', name: 'env'],
                                          ])
          }
        }
        stage('Deploy to QA') {
          Agent None
          steps {
            input 'Proceed if the Sandbox is ready'
          }
        }
        stage('Manual Post Deployment to QA') {
          Agent None
          steps {
            input(id: 'Proceed2', message: 'Are all Manual steps performed?', parameters: [
                                              [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm'],
                                              [$class: 'TextParameterDefinition', defaultValue: 'Comments if false', description: 'Environment', name: 'env'],
                                                             ])
            }
          }
          stage('Functional QA Testing Evidence') {
            Agent None
            steps {
                  input(id: 'Proceed3', message: 'Please provide a link to where the testing evidence is uploaded to Confluence', parameters: [
                                          [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm'],
                                          [$class: 'TextParameterDefinition', defaultValue: 'Location of Testing Evidence', description: 'Environment', name: 'env'],
                                          ])
            }
          }
        }
      }
