#!/bin/bash

#Remove the image if exists to rebuild it
docker rmi feedback-volume

# Build a Docker image
docker build -t feedback-volume .

# Deleting the container if exists
docker stop feedback-container

# Run a Docker container
docker run -d -p 3000:80 -v feedback:/app/feedback --name feedback-container --rm feedback-volume
