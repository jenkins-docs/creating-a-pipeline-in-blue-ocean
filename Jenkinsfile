pipeline {
  agent any
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            echo 'Bulid'
          }
        }
        stage('build2') {
          steps {
            sh 'echo \'OK\''
          }
        }
      }
    }
    stage('compile') {
      steps {
        sh '''docker ps
uname -a
'''
      }
    }
  }
}