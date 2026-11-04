#!/bin/bash

IMAGE="siteweb-imcp"
CONTENEUR="siteweb"

echo "Suppression de l'ancien conteneur (s'il existe)"
docker rm -f $CONTENEUR 2>/dev/null

echo "Construction de l'image"
docker build -t $IMAGE .

echo "Lancement du conteneur sur le port 80"
docker run -d -p 80:80 --name $CONTENEUR --restart always $IMAGE

echo "Déploiement terminé"
docker ps
