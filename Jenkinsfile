pipeline {
  agent any
  stages {
    stage('Build && push') {
      steps {
        sh '''def version = "$(git rev-parse --short HEAD)"
echo "${version}"
docker build --force-rm -t ${REGISTRY}/test:${version} .
docker push ${REGISTRY}/test:${version}'''
      }
    }
  }
  environment {
    CI = 'true'
  }
}