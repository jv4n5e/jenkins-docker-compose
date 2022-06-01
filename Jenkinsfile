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
                sh "docker container stop pipeline-scm-docker-compose-wordpress-1 pipeline-scm-docker-compose-mysqldb-1 || true"
                sh "docker container rm pipeline-scm-docker-compose-wordpress-1 pipeline-scm-docker-compose-mysqldb-1 -f"
                //sh "docker network rm nginxnet mysqlnet tomcatnet pythonnet || true"
            }
        }
    }
    post('If fail, stop and remove containers.'){
        failure {
            sh "docker container stop pipeline-scm-docker-compose-wordpress-1 pipeline-scm-docker-compose-mysqldb-1 || true"
            sh "docker container rm pipeline-scm-docker-compose-wordpress-1 pipeline-scm-docker-compose-mysqldb-1 -f"
            //sh "docker network rm nginxnet mysqlnet tomcatnet pythonnet || true"
        }
    }
}