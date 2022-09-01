pipeline {
    agent any
   tools{
       maven 'maven'
       jdk 'Java'
    }
    environment{
        dockerhub=credentials('dockerhub')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Hello, This is a Docker image build step'
               // git branch: 'main', url: 'https://github.com/vyasg84/docker_python_jenkins'
                sh 'docker build -t vyasg84/jenkins-python-demo:1.0 .'
           }
        }    
    
        stage('Push') {
            steps {
                sh 'docker -t vyasg84/jenkins-python-demo:1.0 vyasg84/jenkins-python-demo:1.0'
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
                sh 'docker push vyasg84/jenkins-python-demo:1.0'
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
