@Library('MyLibrary') _
pipeline {
    agent any    
    stages {
        
        stage('deploy java to tomcat') {
            steps {
                
                    script {deploy_tomcat.deploy_tomcat()}
                
            }
        }                
                               
        
    }

}

