pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up environment...'
                bat 'pip install -r requirements.txt'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the application...'
                bat 'python app.py'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                bat 'pytest'
            }
        }
        stage('Static Code Analysis') {
            steps {
                echo 'Running static code analysis...'
                bat 'flake8 .'
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
