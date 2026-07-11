pipeline {
   
     agent any 

     stages {
        
        stage('Checkout') {

            steps {

                checkout scm
      
            }

        }
        stage('building') {

            steps {

                sh 'docker build -t myapp .'

            } 

        } 
        stage('Testing') {
            
            steps {

                echo 'Testing Docker Image'

            }
        }
        stage('Deploying') {

            steps {

                echo 'Drploying DOCKER IMAGE'

            }  

        }

    }

}
