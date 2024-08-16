#!/bin/bash

if (env.BRANCH_NAME == 'dev') {
echo "Starting new containers..."
docker run -d --name nginx_container -p 80:80
docker-compose up -d
docker tag nginximage sharmi2504:dev
docker push sharmi2504:dev

} else {
         echo "Skipping deploy for branch other than dev"
                    }

