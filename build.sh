#!/bin/sh
docker build -t churchclerkdb .

# docker run --name clerkdb -p 23306:3306 -e MYSQL_ROOT_PASSWORD=<xyz> -d dongpak/churchclerkdb:latest
