pipeline {
  agent {
    docker {
      image 'alpine'
      args '''--env IAM_ROLE=$IAM_ROLE
--env IAM_ID=$IAM_ID'''
    }

  }
  stages {
    stage('Printenv') {
      steps {
        sh 'printenv'
      }
    }

  }
  environment {
    IAM_ROLE = 'role_here_123454'
    IAM_ID = '43542356332'
  }
}