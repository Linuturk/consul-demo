#!/bin/bash

IMAGES=(server client haproxy)

# Build base consul image
echo "##############################"
echo "#### Building base image..."
echo "##############################"
docker build -t consul .

# Build the rest
for image in ${IMAGES[@]}; do
	echo "##############################"
	echo "#### Building $image image..."
	echo "##############################"
	cd $image
	docker build -t consul:$image .
	cd ..
done
