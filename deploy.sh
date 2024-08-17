#!/bin/bash

# Start new containers
echo "Starting new containers..."
docker run -d --name nginxcontainer -p 80:80 nginx:latest

# Assuming docker-compose.yml is properly set up or not
docker-compose up -d

# Tag and push Docker image
echo "Tagging and pushing Docker image..."
docker tag nginx:latest sharmi2504/nginx:dev  
docker push sharmi2504/nginx:dev  

# Deployment based on branch name
if [ "$BRANCH_NAME" = "dev" ]; then
  echo "Deploying to development environment"
  else
  echo "Not in the dev branch. Skipping deployment."
fi


