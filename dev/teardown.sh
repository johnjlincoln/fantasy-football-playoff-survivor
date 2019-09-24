#!/bin/bash

echo "------------------------------------------------------------------------------"
echo "stopping and removing all elements related to this docker-compose.yaml file..."
echo "------------------------------------------------------------------------------"
docker-compose down --rmi all
echo "...complete..."
echo "------------------------------------------------------------------------------"
echo "all resources stopped and purged...teardown complete!"
echo "------------------------------------------------------------------------------"
