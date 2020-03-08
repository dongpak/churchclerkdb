#!/bin/sh
#read -s -p "Enter api user password: " pword
#read -s -p "Enter again: " pword2

#if [ $pword == $pword2 ]; then
#	docker build -t churchclerkdb --build-arg pword=$pword .
#else
#	echo "*** Password does not match!"
#	exit
#fi

docker build -t dongpak/churchclerkdb:latest .

# -- NOTE
# docker run --name clerkdb -p 23306:3306 -e MYSQL_PASSWORD=$password -d dongpak/churchclerkdb:latest

# sudo docker swarm init
# docker swarm join --token SWMTKN-1-4bwqu36r19u0iyqc1jx4gnf6ovyjglufwn26ml38caill03mg5-7ngr3ephlq6vo315rwzqcmf6t 192.168.1.117:2377
# docker swarm join-token manager - displays the join command.
#
# Enable firewalld docker-swarm/2377
# Fedora.  Update the OPTIONS line in /etc/sysconfig/docker removing "--live-restore"
#          systemctl restart docker
#
# docker secret create churchclerkdb file

# docker service create --name clerkdb --secret source=churchclerkdb,target=churchclerkdb --publish 3306:3306 --env MYSQL_PASSWORD_FILE=/run/secrets/churchclerkdb dongpak/churchclerkdb:1.0

#
