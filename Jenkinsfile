pipeline {
    agent any
    stages {
        stage('Run docker-compose file') {
            steps {
                sh 'docker compose up -d'
            }
        }
        stage('Approval to kill'){
            steps {
                input "Can we stop and remove the running containers?"
                sh "docker container stop $(docker container ls -q --filter name=pipeline-scm-docker-compose*) || true"
                sh "docker container rm $(docker container ls -q --filter name=pipeline-scm-docker-compose) -f"
                //sh "docker network rm nginxnet mysqlnet tomcatnet pythonnet || true"
            }
        }
    }
    post('If fail, stop and remove containers.'){
        failure {
            sh "docker container stop $(docker container ls -q --filter name=pipeline-scm-docker-compose*) || true"
                sh "docker container rm $(docker container ls -q --filter name=pipeline-scm-docker-compose) -f"
            //sh "docker network rm nginxnet mysqlnet tomcatnet pythonnet || true"
        }
    }
}