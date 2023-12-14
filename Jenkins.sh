Jenkins-ansible server
ssh -i /Users/nghazi/Downloads/ec2-nghazi.pem ubuntu@ec2-13-40-128-171.eu-west-2.compute.amazonaws.com

#Add this line to the end of the ~/.bashrc file:
export PATH="$PATH:/home/ubuntu/.local/bin"
#This ensures /home/ubuntu/.local/bin is added as a PATH environment variable.

