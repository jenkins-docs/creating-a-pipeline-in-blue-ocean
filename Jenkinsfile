pipeline {
  agent any
  stages {
    stage('Build && push') {
      steps {
        sh '''echo "${VERSION}"
docker build --force-rm -t ${REGISTRY}/test:${VERSION} .
docker push ${REGISTRY}/test:${VERSION}'''
      }
    }
  }
  environment {
    CI = 'true'
    VERSION = '"$(git rev-parse --short HEAD)"'
  }
}