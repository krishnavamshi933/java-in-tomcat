@Library('MyLibrary') _
pipeline {
    agent any
    
    stages {
        
         stage('Checkout code from Git') {
            steps {  

                dir("tag_code") {                              
                                         
                script {checkout_git.checkout_git("war-web-project", "master")}                
                }
            }
        }

        stage('create tag on git repo') {
            steps {                                
                 dir("tag_code") {                        
                script {create_tag.create_tag("${tag}")}                
                 }
            }
        }
        stage('deploy java to tomcat') {
            steps {
                
                    script {deploy_tomcat.deploy_tomcat()}
                
            }
        }         
                                       
        
    }

}
