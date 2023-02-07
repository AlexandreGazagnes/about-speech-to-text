#! /bin/sh


image="speech2text"

docker build -f ./Dockerfile.back -t $image:latest . &&  \
docker run  -p 8080:8080 -ti $image:latest /bin/bash