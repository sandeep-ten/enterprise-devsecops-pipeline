pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t enterprise-nginx:latest .'
            }
        }

        stage('Load Image into Minikube') {
            steps {
                sh 'minikube image load enterprise-nginx:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f kubernetes/deployment.yaml'
                sh 'kubectl apply -f kubernetes/service.yaml'
            }
        }

        stage('Rollout Status') {
            steps {
                sh 'kubectl rollout status deployment/enterprise-deployment'
            }
        }
    }
}