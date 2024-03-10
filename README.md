# Automated-Deployment-of-Responsive-WebApp
"Automated Deployment of Responsive Web Apps" simplifies deploying adaptable web applications across devices. Through automation and orchestration, it ensures swift, reliable deployment, boosting flexibility and scalability for delivering seamless responsive web experiences.

## Docker Commands to build & run the image

### To Build the image:
`docker build  -t responsive_webapp .`

### To Run a container from the built image with port mapping:
`docker run -d -p 80:80 --name webapp`

## Explaning the Jenkins file:
#### Agent Definition:

agent any: Specifies that the pipeline can run on any available agent.
Stages:

#### Build Docker Image:

This stage is responsible for building the Docker image for the responsive web application.
It generates a unique version tag for the image based on the current Jenkins build ID.
The Docker image is built using the docker build command with the generated version tag.

#### Run Docker Container:

After building the Docker image, this stage runs a Docker container from the built image.
The container is run in detached mode (-d) and maps port 80 of the host to port 80 of the container (-p 80:80).
The container runs the Docker image tagged with the version generated in the previous stage.

#### Test:

In this stage, a simple test is performed to check if the website hosted in the Docker container is live and running.
The curl command is used to send an HTTP GET request to http://localhost:80, which is the URL where the web application should be accessible.
The -s option is used with curl to suppress progress meter and other non-error messages.

### Note: This pipeline lays the foundation for building and executing a Jenkins pipeline, providing a starting point for incorporating additional features and tools to enhance the CI/CD process.