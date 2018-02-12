node {
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
      parallel {
        stage('Test') {
          environment {
            CI = 'true'
          }
          steps {
            sh './jenkins/scripts/test.sh'
          }
        }
        stage('Upload File') {
          steps {
        def inputFile = input message: 'Upload file', parameters: [file(name: 'data.zip')]
        new hudson.FilePath(new File("$workspace/data.zip")).copyFrom(inputFile)
        inputFile.delete()
          }
        }
      }
    }
    stage('Deliver') {
      parallel {
        stage('Deliver2') {
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
          stage('Another Stage') {
            steps {
              echo 'working'
            }
          }
        }
      }
    }
  }
