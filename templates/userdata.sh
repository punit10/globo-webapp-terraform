#!/bin/bash

# Update system
sudo yum update -y

# Install Docker and Git
sudo yum install -y docker git

# Start and enable Docker
sudo systemctl enable docker
sudo systemctl start docker

# Add ec2-user to the docker group
sudo usermod -aG docker ec2-user

# Allow ec2-user to access the directory
cd /home/ec2-user

# Clone Django project from GitHub
git clone https://github.com/punit10/django_student_app.git django-app
cd django-app

# Build and run Docker container
docker build -t django-app .
docker run -d -p 8000:8000 django-app
