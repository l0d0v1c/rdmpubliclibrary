echo "sitename ex: jitsi.toto.com "
read name
sudo apt-get update
sudo hostnamectl set-hostname $name
hostname
echo "127.0.0.1 $name" | sudo tee -a /etc/hosts
#sudo ufw allow 80/tcp
#sudo ufw allow 443/tcp
#sudo ufw allow 4443/tcp
#sudo ufw allow 10000/udp
#sudo ufw status
wget https://download.jitsi.org/jitsi-key.gpg.key
sudo apt-key add jitsi-key.gpg.key
rm jitsi-key.gpg.key
echo "deb https://download.jitsi.org stable/" | sudo tee -a /etc/apt/sources.list.d/jitsi-stable.list
sudo apt-get update 

sudo apt-get install -y jitsi-meet
sudo add-apt-repository ppa:certbot/certbot
sudo apt install -y certbot
sudo /usr/share/jitsi-meet/scripts/install-letsencrypt-cert.sh


