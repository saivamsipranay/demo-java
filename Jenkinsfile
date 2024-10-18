pipeline {
    agent any
    parameters {
        string(name: 'PORT', description: 'mention port number', defaultValue: '80')
    }
    stages {
        stage('git checkout') {
            steps {
                echo "checkout"
            }
        }
        stage('Image Build') {
            steps {
                sh "docker image build -t demo-app:${BUILD_ID} ."
            }
        }
        stage('Container run') {
            steps {
                sh "docker container run -d -p ${params.PORT}:8080 demo-app:${BUILD_ID}"
            }
        }
    }
}
