pipeline {
  agent any
  stages {
    stage('Build && Push') {
      parallel {
        stage('Master') {
					when {
						expression { BRANCH_NAME ==~ /master/ }
					}
          steps {
            sh '''VERSION="$(git rev-parse --short HEAD)"
									echo "${VERSION}"
									docker build --force-rm -t ${REGISTRY}/test:${VERSION} .
									docker push ${REGISTRY}/test:${VERSION}
									docker rmi ${REGISTRY}/test:${VERSION}'''
          }
        }
        stage('Other Branchs') {
					when {
						not { 
							expression { BRANCH_NAME ==~ /master/ } 
						}
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
