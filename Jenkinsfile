pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Setup') {
            steps {
                script {
                    echo 'Setting up environment...'
                    sh 'pip install -r requirements.txt'
                }
            }
        }

        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'python app.py'
            }
        }

        stage('Test') {
            steps {
                echo 'Running unit tests...'
                sh 'python -m unittest discover'
            }
        }

        stage('Static Code Analysis') {
            steps {
                echo 'Running static code analysis...'
                sh 'flake8 .'
            }
        }

        stage('Coverage') {
            steps {
                echo 'Running code coverage analysis...'
                sh 'coverage run -m unittest discover'
                sh 'coverage report -m'
                sh 'coverage html'
            }
        }

        stage('Security Scan') {
            steps {
                echo 'Running security scan...'
                sh 'bandit -r .'
            }
        }

        stage('Publish') {
            steps {
                echo 'Publishing artifacts...'
                archiveArtifacts artifacts: '**/app.py, **/test_app.py, **/coverage_html_report/**'
            }
        }
    }
}
