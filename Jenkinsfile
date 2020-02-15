pipeline {
  agent any
  stages {
    stage('Sleep') {
      parallel {
        stage('Test') {
          steps {
            sleep(time: 1, unit: 'SECONDS')
          }
        }

        stage('Script') {
          steps {
            sh '''#!/bin/bash
echo hiya'''
          }
        }

      }
    }

  }
  environment {
    yes = 'no'
  }
}