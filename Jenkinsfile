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
      parallel(
        'Deploy QA': {
          echo "Deploy QA"
        },
        'Deploy Perf': {
          echo "Deploy Perf"
        }
      )
    }

    stage('Functional Test') {
      parallel(
        'Full E2E': {
          echo "Full E2E"
        },
        'Full DV': {
          echo "Full DV"
        }
      )
    }
  }
}