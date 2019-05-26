#Remove old versions of Docker if installed
sudo apt-get -y remove docker docker-engine docker.io

#Setup the Docker Repos
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates wget software-properties-common

#Add the GPG key for the Docker Repo
wget https://download.docker.com/linux/debian/gpg
sudo apt-key add gpg

echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" | sudo tee -a /etc/apt/sources.list.d/docker.list

#Update the Database
sudo apt-get update

#Install Docker and Docker-Compose

sudo apt-get -y install docker-ce docker-compose


