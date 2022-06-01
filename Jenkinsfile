pipeline {
    agent any
    stages {
        stage('Run docker-compose file') {
            steps {
                sh 'docker compose up -d'
            }
        }
    }
}