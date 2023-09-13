pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'apache:v1.0.0'
        DOCKERFILE_PATH = 'Dockerfile'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build(env.DOCKER_IMAGE, "--file ${env.DOCKERFILE_PATH} .")
                    dockerImage.push()
                }
            }
        }
    }
}
