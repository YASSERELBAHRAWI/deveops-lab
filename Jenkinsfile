pipeline {
   
     agent any
     
     environment {

         IMAGE_NAME = "myapp"

         VERSION = "1.0"

     }

     stages {
        
        stage('Checkout') {

            steps {

                checkout scm
      
            }

        }
        stage('building') {

            steps {

                sh 'docker build -t $IMAGE_NAME:$VERSION .'

            } 

        }
        stage('Credentials Demo') {

            steps {

                withCredentials([string(credentialsId: 'github-token', variable: 'TOKEN')]) {

                    sh 'echo $TOKEN'

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
