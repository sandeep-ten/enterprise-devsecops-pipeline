pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Show Files') {
            steps {
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t enterprise-dashboard:latest -f docker/Dockerfile .'
            }
        }
    }

    post {
        success {
            echo 'Docker Image Built Successfully!'
        }

        failure {
            echo 'Pipeline Failed!'
        }
    }
}