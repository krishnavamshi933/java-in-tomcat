def git_checkout() {
    
    echo "git checkout."
    git branch: 'main', credentialsId: 'krishnavamshi933', url: 'git@github.com:krishnavamshi933/java-hello-world-with-maven.git'

}

return this
