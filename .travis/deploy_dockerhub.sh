#!/bin/sh
docker login --username $DOCKER_USER --password $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
echo "Datos"
echo $TRAVIS_REPO_SLUG
echo $TAG
echo $DOCKER_REPO
echo $TRAVIS_BRANCH
echo "Fin datos"
docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
docker tag $TRAVIS_REPO_SLUG $DOCKER_REPO
docker push $DOCKER_REPO