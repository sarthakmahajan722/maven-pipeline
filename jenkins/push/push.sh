#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u ricardoandre97 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG sarthakmahajan722/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push sarthakmahajan722/$IMAGE:$BUILD_TAG
