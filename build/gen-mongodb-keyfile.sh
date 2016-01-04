#! /bin/bash

openssl rand -base64 741 > ../runtime/mongodb/certs/mongodb-keyfile

# sudo chown 999:999 ../runtime/mongodb/certs/mongodb-keyfile
# sudo chmod 600 ../runtime/mongodb/certs/mongodb-keyfile
