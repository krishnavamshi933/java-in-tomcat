@Library('MyLibrary') _
pipeline {
    agent any    
    stages {
        
        stage('git') {
            steps {
                
                    echo "hello world"
                
            }
        } 
         stage('maven build') {
            script {
                deploy_tomcat.deploy_tomcat()  
            }
         }
         stage('code build') {
            script {
                awscode_build.awscode_build()  
            }
       
    }

}
}