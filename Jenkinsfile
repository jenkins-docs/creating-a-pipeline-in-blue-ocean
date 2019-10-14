pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3000:3000'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'echo  \"Build\"'
      }
    }

    stage('Test') {
      steps {
        sh 'echo  \"Test\"'
      }
    }

    stage('Deploy Dev') {
      steps {
        sh 'echo  \"Deploy Dev\"'
      }
    }
    stage('Smoke Test') {
      steps {
        sh 'echo  \"Smoke Test\"'
      }
    }
    stage('Deploy QA') {
      parallel {
        stage('Deploy QA') {
            steps {
                sh 'echo  \"Deploy QA\"'
            }
        }
        stage('Deploy Perf') {
            steps {
                sh 'echo  \"Deploy Perf\"'
            }
        }
      }
    }
  }
}