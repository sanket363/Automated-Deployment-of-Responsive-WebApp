pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Generate a unique version based on current timestamp
                    def version = "responsive-webapp:v${env.BUILD_ID}"
                    
                    // Build Docker image with the generated version tag
                    sh "docker build -t $version ."
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Run Docker container with the built image on port 80
                    sh "docker run -d -p 80:80 responsive-webapp:v${env.BUILD_ID}"
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    // Use curl to check if the website is live and running
                    sh "curl -s http://localhost:80"
                }
            }
        }
    }
}
