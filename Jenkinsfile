#!groovy
pipeline {
    agent { 
        dockerfile {
            filename "Dockerfile.build"
        }
    }
    stages{

        stage('Test image') {
            steps { 
            /* Ideally, we would run a test framework against our image.*/

                echo "Tested!!!!"
            }
        }
    }
}
