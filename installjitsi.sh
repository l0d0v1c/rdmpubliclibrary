git clone https://github.com/jitsi/docker-jitsi-meet && cd docker-jitsi-meet
cp env.example .env
mkdir -p ~/.jitsi-meet-cfg/{web/letsencrypt,transcripts,prosody,jicofo,jvb}
sudo apt install -y docker-compose
#change version 2 in yml
sudo systemctl start docker
sudo docker-compose up -d 
