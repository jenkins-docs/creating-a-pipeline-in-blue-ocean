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
        sh 'npm install'  
      }
    }

    stage('Test') {
      steps {
        sh 'echo  \"Test\"'
      }
    }

    stage('Deploy Dev') {
      
    }
    stage('Smoke Test') {
      
    }
    stage('Deploy QA') {
      parallel {
        stage('Deploy QA') {
            steps {
                h 'echo  \"Deploy QA\"'
            }
        }
        stage('Deploy Perf') {
            steps {
                h 'echo  \"Deploy Perf\"'
            }
        }
      }
    }
  }
}