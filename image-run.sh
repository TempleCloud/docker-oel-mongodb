#!/bin/bash

docker run --name oel-mongodb \
           -v mongodb-data:/var/lib/mongodb \
           -v $(pwd)/runtime/mongodb/logs:/var/log/mongodb \
           -v $(pwd)/runtime/mongodb/certs:/srv/mongodb \
           -p 27017:27017 \
           -d oel-mongodb

# docker run --name oel-mongodb \
#            -v $(PWD)/dockerized/mongodb/data:/var/lib/mongodb \
#            -v $(PWD)/dockerized/mongodb/logs:/var/log/mongodb \
#            -v $(PWD)/dockerized/mongodb/certs:/srv/mongodb \
#            -p 27017:27017 \
#            -d templecloud/oel-mongodb
