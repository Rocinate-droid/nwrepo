pipeline {
    agent any
    stages {
        stage ("docker-image-creation") {
            steps {
                sh 'docker build -t httpd-pipeline .'
            }
        }
        stage ("docker-container-run") {
            steps {
                sh 'docker run -itd --name "http-page" -p 80:80 httpd-pipeline'
            }
        }
    }
}
