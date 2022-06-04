pipeline {
    agent any
    stages {
        stage('Deploy stack from docker-compose file.') {
            steps {
                sh 'docker stack deploy -c docker-compose.yml mysql-wordpress'
            }
        }
        stage('Approval to kill'){
            steps {
                input "Can we stop and remove the stack?"
                sh 'docker stack rm mysql-wordpress'
            }
        }
    }
    post('If fail, stop and remove containers.'){
        failure {
            sh 'docker stack rm mysql-wordpress'
        }
    }
}
