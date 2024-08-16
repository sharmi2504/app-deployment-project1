#!/bin/bash
echo "Starting new containers..."
docker run -d --name nginx_container -p 80:80
docker-compose up -d
docker tag nginximage sharmi2504:dev
docker push sharmi2504:dev

