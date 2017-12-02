#!groovy
pipeline {
    agent { 
        dockerfile true 
    }
    stages{
        stage('Clone repository') {
            steps { 
                /* Let's make sure we have the repository cloned to our workspace */

                checkout scm
            }
        }

        stage('Build image') {
            steps { 
            /* This builds the actual image; synonymous to
             * docker build on the command line */

            app = docker.build("personal-site")
            }
        }

        stage('Test image') {
            steps { 
            /* Ideally, we would run a test framework against our image.*/

            app.inside {
                echo "Tested!!!!"
            }
            }
        }
    }
}
