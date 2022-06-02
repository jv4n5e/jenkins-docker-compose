pipeline {
    agent any
    stages {
        stage('Run mysql from docker-compose file') {
            steps {
                sh 'docker compose run -d mysqldb'
            }
        }
        stage('Run wordpress from docker-compose file') {
            steps {
                sh 'docker compose run wordpress'
            }
        }
        stage('Approval to kill'){
            steps {
                input "Can we stop and remove the running containers?"
                sh 'docker compose stop'
                /*sh '''
                    docker container stop \$(docker container ls -a --filter name=pipeline-scm-docker-compose | awk '(NR>1)' | awk '{print $1}') || true
                '''
                sh '''
                    docker container rm \$(docker container ls -a --filter name=pipeline-scm-docker-compose | awk '(NR>1)' | awk '{print $1}') -f
                '''*/
                sh 'docker compose rm -f'
            }
        }
    }
    post('If fail, stop and remove containers.'){
        failure {
            sh 'docker compose stop'
            /*sh '''
                docker container stop \$(docker container ls -a --filter name=pipeline-scm-docker-compose | awk '(NR>1)' | awk '{print $1}') || true
            '''
            sh '''
                docker container rm \$(docker container ls -a --filter name=pipeline-scm-docker-compose | awk '(NR>1)' | awk '{print $1}') -f
            '''*/
            sh 'docker compose rm -f'
        }
    }
}