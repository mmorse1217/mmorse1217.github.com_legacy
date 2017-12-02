#!groovy
pipeline {
    agent { 
        dockerfile {
            filename "Dockerfile.build"
        }
    }
    stages{
        stage('Clone repository') {
            steps { 
                /* Let's make sure we have the repository cloned to our workspace */

                checkout scm
            }
        }


        stage('Test image') {
            steps { 
            /* Ideally, we would run a test framework against our image.*/

                echo "Tested!!!!"
            }
        }
    }
}
