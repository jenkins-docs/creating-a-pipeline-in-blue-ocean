pipeline {
  agent any
  stages {
    stage('Build && Push') {
      parallel {
        stage('Branch Master') {
	  when {
	    branch 'master'
	  }
          steps {
            sh '''VERSION="$(git rev-parse --short HEAD)"
echo "${VERSION}"
docker build --force-rm -t ${REGISTRY}/test:${VERSION} .
docker push ${REGISTRY}/test:${VERSION}
docker rmi ${REGISTRY}/test:${VERSION}'''
          }
        }
        stage('Branch branch-1') {
	  when {
	    branch 'branch-1'
	  }
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
