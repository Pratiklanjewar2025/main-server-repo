pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t main-server:latest docker/'
            }
        }

        stage('Run Application') {
            steps {
                sh 'docker run -d -p 5000:5000 main-server:latest'
            }
        }

        stage('Monitor & Autoscale') {
            steps {
                sh 'bash scripts/monitor_users.sh'
            }
        }
    }
}
