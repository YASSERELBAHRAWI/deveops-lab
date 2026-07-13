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
        stage('Credentials Demo') {

            steps {

                withCredentials([string(credentialsId: 'github-token', variable: 'TOKEN')]) {

                    sh 'echo "Token Loaded Successfully"'

                }

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
