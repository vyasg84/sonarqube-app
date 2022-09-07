pipeline {

  agent any

  stages {

    stage('SCM') {
            steps {
                git url: 'https://github.com/vyasg84/sonarqube-app'
            }
        }
        stage('build && SonarQube analysis') {
            steps {
                withSonarQubeEnv('My SonarQube Server') {
                    // Optionally use a Maven environment you've configured already
                    withMaven(maven:'Maven 3.5') {
                        sh 'mvn clean package sonar:sonar'
                    }
                }
            }
        }
        stage("Quality Gate") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                    waitForQualityGate abortPipeline: true
                }
            }
        }
    
//         stage('SonarQube Code Analyzer') {

//         environment {

//             scannerHome = tool 'SonarQube Scanner'

//         }

//         steps {

//             withSonarQubeEnv('SonarQube') {

//                 sh '''${tool("Sonar Scanner")}/bin/sonar-scanner \

//              -Dsonar.projectKey=task2-jenkins-sonarqube \

//              -Dsonar.sources=. \

//              -Dsonar.host.url=http://localhost:9000 \

//              -Dsonar.login=7118946469f544feb8f50a6f3fca8c8f36de1cdf'''

//             }

//             timeout(time: 10, unit: 'MINUTES') {

//                     waitForQualityGate abortPipeline: true

//             }

//       sh 'git push origin release/uat'

//         }

//     }

  }

}
