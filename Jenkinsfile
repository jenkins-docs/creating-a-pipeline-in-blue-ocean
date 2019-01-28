pipeline {
  agent any
  stages {
        stage('Build && push') {
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
        stage('Build && Push') {
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
  environment {
    CI = 'true'
    VERSION = ''
  }
}
