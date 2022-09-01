pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Hello, This is a Docker image build step'
                git branch: 'main', url: 'https://github.com/vyasg84/docker_python_jenkins'
                sh "docker build -t jenkins-python-demo ."
           }
        }    
    
        stage('Push') {
            steps {
                echo 'Building'
         }
        }    
    
        stage('Test') {
            steps {
                echo 'Testing'
         }
        }    
    
        stage('Deploy') {
            steps {
                echo 'Deploying'
         }
        }    
    }
}
