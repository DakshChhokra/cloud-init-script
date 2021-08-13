#!/bin/bash

# these Keep Failing
# sudo apt update -y 
# sudo apt upgrade -y

# jq
sudo apt install jq -y

# unzip
sudo apt install unzip -y

# azure-cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# helm
curl -sL https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | sudo bash

# kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
echo "alias k=kubectl" | sudo tee /home/adminuser/.bash_aliases


#get github
sudo apt install git -y

#github ssh setup
ssh-keygen -t ed25519 -C "dchhokra@thebhwgroup.com" -N aks -f ~/.ssh/id_ed25519 -q
# eval "$(ssh-agent -s)"

# ssh-add ~/.ssh/id_ed25519
# echo "PUBLIC KEY"
# cat ~/.ssh/id_ed25519.pub
