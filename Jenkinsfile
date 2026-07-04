pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                dir('my-app') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage('Test') {
            steps {
                dir('my-app') {
                    sh 'mvn test'
                }
            }
        }

        stage('Package') {
            steps {
                dir('my-app') {
                    sh 'mvn package'
                }
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'my-app/target/*.jar', fingerprint: true
            }
        }
    }
}
