#!/bin/bash

# Start new containers
echo "Starting new containers..."
docker run -d --name nginx_container -p 80:80 nginx:latest  # Specify the image name here

# Assuming docker-compose.yml is properly set up
docker-compose up -d

# Tag and push Docker image
echo "Tagging and pushing Docker image..."
docker tag nginx:latest sharmi2504/nginx:dev  # Assuming 'nginx:latest' is your source image
docker push sharmi2504/nginx:dev  # Specify the complete repository name

# Deployment based on branch name
if [ "$BRANCH_NAME" = "dev" ]; then
  echo "Deploying to development environment"
  # Your deployment commands here
else
  echo "Not in the development branch. Skipping deployment."
fi


