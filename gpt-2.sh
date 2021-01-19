export LC_ALL=C
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt install ubuntu-drivers-common
sudo ubuntu-drivers autoinstall
lsmod | grep nvidia
sudo modprobe nvidia
lsmod | grep nvidia
echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh
source .bashrc
conda create -n tgpu python=3.6 tensorflow-gpu==1.15.0
conda activate tgpu
conda install -y requests
pip install gpt-2-simple
sudo apt-get install joe git 
git config --global credential.helper 'cache --timeout=3600'
