@Library('MyLibrary') _
pipeline {
    agent any    
    stages {
        
        stage('git') {
            steps {
                
                    script {git_checkout.git_checkout()}
                
            }
        } 

        stage('maven build') {
            steps {
                
                    script {maven_build.maven_build()}
                
            }
        } 
           stage('codebuild') {
            steps {
                
                    script {awscode_build.awscode_build()}
                
            }
        } 
        stage('deploy java to tomcat') {
            steps {
                
                    script {deploy_tomcat.deploy_tomcat()}
                
            }                 
        }                      
        

    }

}

