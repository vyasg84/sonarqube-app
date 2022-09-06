pipeline {

  agent any

  stages {

        stage('SonarQube Code Analyzer') {

        environment {

            scannerHome = tool 'SonarQube Scanner'

        }

        steps {

            withSonarQubeEnv('SonarQube') {

                sh '''${tool("Sonar Scanner")}/bin/sonar-scanner \

             -Dsonar.projectKey=task2-jenkins-sonarqube \

             -Dsonar.sources=. \

             -Dsonar.host.url=http://localhost:9000 \

             -Dsonar.login=7118946469f544feb8f50a6f3fca8c8f36de1cdf'''

            }

            timeout(time: 10, unit: 'MINUTES') {

                    waitForQualityGate abortPipeline: true

            }

      sh 'git push origin release/uat'

        }

    }

  }

}
