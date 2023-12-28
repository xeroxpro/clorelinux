#apt update 
#export DEBIAN_FRONTEND=noninteractive
#apt-get -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" install nvidia-driver-535 -y
#BASE_URL=https://us.download.nvidia.com/tesla
#DRIVER_VERSION=450.80.02
#curl -fSsl -O $BASE_URL/$DRIVER_VERSION/NVIDIA-Linux-x86_64-$DRIVER_VERSION.run
#sh NVIDIA-Linux-x86_64-$DRIVER_VERSION.run
apt-get install linux-headers-$(uname -r)
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-keyring_1.0-1_all.deb
dpkg -i cuda-keyring_1.0-1_all.deb
apt-get update
apt-get -y install cuda-drivers

