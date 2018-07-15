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
        sh '''uname -a'''
        sh '''curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py '''
        sh '''python get-pip.py '''
        sh '''pip --version '''
        sh '''pip install Django'''
      }
    }
  }
}
