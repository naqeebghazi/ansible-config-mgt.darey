# Jenkins-ansible server
ssh -i /Users/nghazi/Downloads/ec2-nghazi.pem ubuntu@ec2-13-40-128-171.eu-west-2.compute.amazonaws.com

# Add this line to the end of the ~/.bashrc file:
export PATH="$PATH:/home/ubuntu/.local/bin"
# This ensures /home/ubuntu/.local/bin is added as a PATH environment variable.

# What is pip?
# Install and execute apps from Python packages (more info: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-with-pip)

To install Ansible onto Linux:

sudo apt update -y
sudo apt install python3-pip
sudo apt install pipx
# This installs full Ansible:
pipx install --include-deps ansible
# This installs the main components of Ansible:
pipx install ansible-core

# Or just do this:
sudo apt install ansible


