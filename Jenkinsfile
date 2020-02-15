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
      parallel {
        stage('Printenv') {
          steps {
            sh 'printenv'
          }
        }

        stage('os-release') {
          steps {
            sh 'cat /etc/os-release'
          }
        }

      }
    }

  }
  environment {
    IAM_ROLE = 'role_here_123454'
    IAM_ID = '43542356332'
  }
}