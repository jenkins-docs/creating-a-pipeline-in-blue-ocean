pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3001:3001'
    }
    
  }
  stages {
    stage('Sonar Quality') {
        agent {
            docker {
              image 'node:6-alpine'
              args '-p 3001:3001'
         }
      steps {
        echo 'sonar'
        sleep 7
      }
    }
    stage('Build Validation') {
      parallel {
        stage('Selective CI Validation') {
          steps {
            echo 'working'
            sleep 10
          }
        }
        stage('Review Deployment Checklist') {
          agent none
          steps {
            input(id: 'Proceed1', message: 'Is the Deployment Checklist ok?', parameters: [
                   [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm you agree with this'],
                 [$class: 'TextParameterDefinition', defaultValue: '', description: 'Comments if false', name: 'env'],
                                                                                                                     ])
            }
          }
        }
      }
      stage('AutoMerge') {
        steps {
          echo 'merge pull request'
          sleep 5
        }
      }
      stage('Full CI Validation') {
        steps {
          echo 'Full CI'
          sleep 10
        }
      }
      stage('Manual Pre QA') {
        agent none
        steps {
          input(id: 'Proceed4', message: 'Are all Manual steps for SharedQAperformed?', parameters: [
           [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm'],
            [$class: 'TextParameterDefinition', defaultValue: '', description: 'Comments if false', name: 'env'],
             ])
          }
        }
        stage('Deploy to QA') {
          agent none
          steps {
            input 'Proceed if the SharedQA Sandbox is ready'
            sleep 5
          }
        }
        stage('Manual Post QA') {
          agent none
          steps {
            input(id: 'Proceed2', message: 'Are all Post Deployment steps for SharedQA performed?', parameters: [
              [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm'],
               [$class: 'TextParameterDefinition', defaultValue: '', description: 'Comments if false', name: 'env'],
                                                                                                   ])
            }
        }
    
          stage('Functional QA Test Evidence') {
            parallel {
              stage ('Provide the evidence') {
                agent none
                steps {
                  input(id: 'Proceed3', message: 'Please provide a link to where the testing evidence is uploaded to Confluence', parameters: [
                        [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm'],
                        [$class: 'TextParameterDefinition', defaultValue: '', description: 'Location of Testing Evidence', name: 'env'],
                        ])
                  }
              }
              stage ('Enter the PreProd RFC') {
                agent none
                steps {
                  input(id: 'Proceed5', message: 'Please PreProd RFC Number', parameters: [
                        [$class: 'TextParameterDefinition', defaultValue: '', description: 'PreProd RFC Number', name: 'env'],
                        ])
                  }
              }    
         }     
            
      }
    
    
       stage('Manual Pre PreProd') {
        agent none
        steps {
          input(id: 'Proceed4', message: 'Are all Manual steps for PreProd performed?', parameters: [
           [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm'],
            [$class: 'TextParameterDefinition', defaultValue: '', description: 'Comments if false', name: 'env'],
             ])
          }
        }
        stage('Deploy to PreProd') {
          agent none
          steps {
            input 'Proceed if the Sandbox is ready'
            sleep 5
          }
        }
        stage('Manual Post PreProd') {
          agent none
          steps {
            input(id: 'Proceed2', message: 'Are all Post Deployment steps for PreProd performed?', parameters: [
              [$class: 'BooleanParameterDefinition', defaultValue: false, description: '', name: 'Please confirm'],
               [$class: 'TextParameterDefinition', defaultValue: '', description: 'Comments if false', name: 'env'],
                                                                                                   ])
            }
        }
    
    
          } //end stages
        } //end pipeline
