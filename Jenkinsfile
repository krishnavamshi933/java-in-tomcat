@Library('MyLibrary') _
pipeline {
    agent any    
    stages {
        
        stage('git') {
            steps {
                
                    script {checkout.checkout()}
                
            }
        } 

        stage('maven build') {
            steps {
                
                    script {maven.maven()}
                
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

