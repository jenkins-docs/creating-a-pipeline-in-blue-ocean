pipeline {
  agent any
  stages {
    stage('Build && push') {
      steps {
        sh '''docker build -t ${REGISTRY}/test:${VERSION} .
docker push ${REGISTRY}/test:${VERSION}'''
      }
    }
  }
  environment {
    CI = 'true'
    VERSION = '1.0.1'
  }
}