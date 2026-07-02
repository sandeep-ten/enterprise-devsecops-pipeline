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

        stage('Hello DevSecOps') {
            steps {
                sh 'echo "Hello DevSecOps!"'
            }
        }
    }
}