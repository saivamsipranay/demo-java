pipeline {
    agent any
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
    }
}
