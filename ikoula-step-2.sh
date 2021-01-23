wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
chmod +x miniconda.sh
bash ~/miniconda.sh
source ~/.bashrc
sudo apt-get install joe git 
git config --global credential.helper 'cache --timeout=3600'

sudo apt-get install  apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo useradd -m dockr
echo "entrer le mot des passe de l'utilisateur dockr'"
sudo passwd dockr
sudo usermod -aG sudo dockr