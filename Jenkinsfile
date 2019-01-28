pipeline {
  agent any
  stages {
    stage('Build && push') {
      parallel {
        stage('Build && push') {
          steps {
            sh '''VERSION="$(git rev-parse --short HEAD)"
echo "${VERSION}"
docker build --force-rm -t ${REGISTRY}/test:${VERSION} .
docker push ${REGISTRY}/test:${VERSION}
docker rmi ${REGISTRY}/test:${VERSION}'''
          }
        }
        stage('Build && Push') {
          steps {
            sh '''VERSION="$(git rev-parse --short HEAD)"
echo "${VERSION}"
docker build --force-rm -t ${REGISTRY}/test:${VERSION} .
docker push ${REGISTRY}/test:${VERSION}
docker rmi ${REGISTRY}/test:${VERSION}'''
          }
        }
      }
    }
  }
  environment {
    CI = 'true'
    VERSION = ''
  }
}