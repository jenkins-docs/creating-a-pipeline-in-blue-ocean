pipeline {
  agent {
    node {
      label 'test'
    }

  }
  stages {
    stage('test') {
      steps {
        echo '"Hi Suresh"'
      }
    }
  }
  environment {
    node = 'jenkinsnode'
  }
}