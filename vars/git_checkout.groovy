def deploy_tomcat() {
    
    echo "git checkout."
    git branch: 'main', credentialsId: 'krishnavamshi933', url: 'git@github.com:krishnavamshi933/java-in-tomcat.git'

}

return this
