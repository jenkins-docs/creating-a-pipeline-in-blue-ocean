pipeline {
  agent any
  stages {
    stage('Build && push') {
      steps {
        input(submitterParameter: 'name: \'Version\'', message: 'Input Version')
        sh '''docker build -t test:1.0.0 .
docker push ${REGISTRY}/test:1.0.0'''
      }
    }
  }
  environment {
    CI = 'true'
  }
}