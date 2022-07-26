@Library('MyLibrary') _
pipeline {
    agent any    
    stages {
        
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
        tag('deploy java to tomcat') {
            steps {
                
                    script {deploy_tomcat.deploy_tomcat()}
                
            }                 
        }                      
        

    }

}

