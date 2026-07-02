pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Show Workspace') {
            steps {
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t enterprise-nginx .'
            }
        }

        stage('Hello DevSecOps') {
            steps {
                sh 'echo "Hello DevSecOps!"'
            }
        }

    }
}