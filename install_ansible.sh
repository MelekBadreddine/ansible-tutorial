#!/bin/bash

# Update package lists
sudo apt update

# Install Python
sudo apt install -y python3 python3-pip

# Install Ansible
sudo apt install -y ansible

# Install Docker dependencies
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package lists again
sudo apt update

# Install Docker
sudo apt install -y docker-ce

# Add user to the docker group
sudo usermod -aG docker $USER

echo "Python, Ansible, and Docker have been installed successfully."
echo "Please log out and log back in to apply the user to the docker group changes."

#chmod +x install_ansible.sh
#./install_ansible.sh
