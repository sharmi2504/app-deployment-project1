#!/bin/bash
docker stop mynignxcointainer
docker rm mynignxcointainer
docker build -t nginximage .
docker run -d --name mynignxcointainer -p 80:80 nginximage

