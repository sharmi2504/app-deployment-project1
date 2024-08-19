#!/bin/bash
docker login -u sharmi2504 -p dckr_pat_9SQ5F6VWmpfq_5dLNHHeqxN2XZI
if [ $GIT_BRANCH = "origin/dev" ]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker tag projectimage sharmi2504/dev
    docker push sharmi2504/dev

elif [ $GIT_BRANCH = "origin/master" ]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker tag projectimage sharmi2504/prod 
    docker push sharmi2504/prod
fi


