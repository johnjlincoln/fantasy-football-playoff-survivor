#!/bin/bash

echo "------------------------------------------------------------------------------"
echo "Copying .env.conf to docker-compose env file..."
echo "------------------------------------------------------------------------------"
cp .env.conf .env
echo "...complete..."
echo "------------------------------------------------------------------------------"
echo "setting storate and bootsrap/cache permissions..."
echo "------------------------------------------------------------------------------"
sudo chgrp -R www-data ../storage ../bootstrap/cache
sudo chmod -R ug+rwx ../storage ../bootstrap/cache
echo "...complete..."
echo "------------------------------------------------------------------------------"
echo "starting environment..."
echo "------------------------------------------------------------------------------"
docker-compose up -d --build
echo "...complete..."
echo "------------------------------------------------------------------------------"
echo "dumping startup logs..."
echo "------------------------------------------------------------------------------"
docker-compose logs
echo "...complete..."
echo "------------------------------------------------------------------------------"
echo "Init complete! If there were errors idk just fix them and try again"
echo "------------------------------------------------------------------------------"
