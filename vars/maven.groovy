def maven() {
    
    echo "Running Maven Build"
   sh 'mvn clean install'

}