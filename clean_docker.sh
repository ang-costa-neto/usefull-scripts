#!/bin/bash

# Parar todos os containers Docker
docker stop $(docker ps -a -q)

# Remover todos os containers Docker
docker rm -f $(docker ps -a -q)

# Remover todas as imagens Docker
docker rmi -f $(docker images -q)

# Remover todos os volumes Docker
docker volume prune -f

# Remover todas as networks Docker
docker network prune -f
