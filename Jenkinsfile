pipeline {
    agent any
    environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub-cred-vyasg')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Hello, This is a Docker image build step'
               // git branch: 'main', url: 'https://github.com/vyasg84/docker_python_jenkins'
                sh 'docker build -t vyasg84/jenkins-python-demo:1.0 .'
           }
        }    
    
        stage('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                
         }
        }    
    
        stage('Push') {
            steps {
                  sh 'docker push vyasg84/jenkins-python-demo:1.0'

         }
        }    
    
        stage('Deploy') {
            steps {
                echo 'Deploying'
         }
        }    
    }
    post {
		always {
			sh 'docker logout'
		}
	}
}
