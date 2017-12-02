#!groovy
pipeline {
    agent { 
        dockerfile {
            filename "Dockerfile.build"
            args ""
        }
    }
    stages{

        stage('Test image') {
            steps { 
            /* Ideally, we would run a test framework against our image.*/
            sh 'docker run hello-world'
            }
        }
    }
}
