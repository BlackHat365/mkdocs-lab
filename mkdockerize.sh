# This is a wrapper script for executing Containerization of both produce and serve option mkdocs. note that i create different container image for produce and serving mkdocs.
#!/bin/bash

set -x

# Build the mkdocs produce docker image to build the website 
docker build -t mkdocs-produce -f Dockerfile.produce .

# Produce mkdocs Website
docker run --rm -i mkdocs-produce produce

# Build the mkdocs serve docker image to serve the website using nginx
docker build -t mkdocs-serve -f Dockerfile.serve .

# pass the argument of serve on docker image
docker run -p 8000:8000 --rm -i mkdocs-serve serve

# remove unnecessary tar file
rm -rf /output/site.tar.gz
