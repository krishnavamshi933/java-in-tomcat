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
        stage('aws trigger') {
            steps {
                dir("tag_code")
                
                    script {
                        awscode_build.awscode_build("java-project", "${tag}")
                        }
                
            }
        }             
                                       
        
    }

}
