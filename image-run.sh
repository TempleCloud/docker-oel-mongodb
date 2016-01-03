#!/bin/bash

docker run --name oel-mongodb \
           -d \
           -p 27017:27017 \
           -v idoru-mongo-data:/var/lib/mongo \
           -v idoru-mongo-logs:/var/log/mongodb \
           oel-mongodb
