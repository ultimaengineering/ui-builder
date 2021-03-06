pipeline {
  agent {
    kubernetes {
      yamlFile 'KubernetesBuilder.yaml'
    }
  }
  stages {
    stage('build and publish') {
      steps {
        checkout scm
        container('kaniko') {
          sh 'ulimit -n 10000'
          sh '/kaniko/executor -f Dockerfile --destination=docker.ultimaengineering.io/ui_builder:latest'
        }
      }
    }
  }
}
