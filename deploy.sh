#!/bin/bash
if [ $GIT_BRANCH = "dev" ]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker tag projectimage sharmi2504/dev
    docker push sharmi2504/dev

elif [ $GIT_BRANCH = "master" ]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker tag projectimage sharmi2504/prod 
    docker push sharmi2504/prod
fi
