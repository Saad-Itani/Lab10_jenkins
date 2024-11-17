pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up environment...'
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'python your_script.py'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'pytest'
            }
        }
        stage('Static Code Analysis') {
            steps {
                echo 'Running static code analysis...'
                sh 'flake8 .'
            }
        }
        stage('Publish') {
            steps {
                echo 'Archiving build outputs...'
                archiveArtifacts artifacts: '**/*.py', fingerprint: true
            }
        }
    }
}