@Library('MyLibrary') _
pipeline {
    agent any    
    stages {
        
        stage('deploy java to tomcat') {
            steps {
                
                    script {deploy_tomcat.deploy_tomcat()}
                
            }
        }
        stage('maven build') {
            steps {
                
                    script {maven_build.maven_build()}
                
            }
        } 
           stage('codebuild') {
            steps {
                
                    script {codebuild.codebuild()}
                
            }
        }                  
                               
        

    }

}

