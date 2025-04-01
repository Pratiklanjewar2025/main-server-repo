#!/bin/bash
apt update -y
apt install -y docker.io nginx python3-pip
systemctl start docker
systemctl enable docker

# Pull and run the application
docker run -d -p 5000:5000 main-server:latest

# Start Nginx
systemctl restart nginx
