#!/bin/bash

# Build a Docker image
docker build -t feedback-volume .

# Run a Docker container
docker run -d -p 3000:80 -v feedback:"/Users/harshvaghani/Desktop/programmingprojects/devops/dummyapps/feedback-app-nodejs:/app.feedback" --name feedback-container --rm feedback-volume
