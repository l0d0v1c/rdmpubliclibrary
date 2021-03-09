export LC_ALL=C
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
#sudo apt install ubuntu-drivers-common
#sudo ubuntu-drivers autoinstall
#sudo add-apt-repository ppa:graphics-drivers
#sudo apt-get update
sudo apt-get install -y nvidia-driver-450
sudo apt-get install -y fail2ban
sudo systemctl start fail2ban
sudo systemctl enable fail2ban
reboot



