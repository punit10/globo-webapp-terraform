#!/bin/bash

#!/bin/bash
set -x
exec > /home/ec2-user/dockerrun.log 2>&1

# Update system
sudo yum update -y

# Install Docker and Git
sudo yum install -y docker git

sleep 5

# Start and enable Docker
sudo systemctl enable docker
sudo systemctl start docker

# Add ec2-user to the docker group
sudo usermod -aG docker ec2-user

# Allow ec2-user to access the directory
cd /home/ec2-user

# Clone Django project from GitHub
sudo rm -rf student_app
git clone https://github.com/punit10/django_student_app.git student_app
cd student_app

# Build and run Docker container
docker build -t django-app .
docker run -d -p 8000:8000 student_app
