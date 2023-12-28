#apt update -y
#export DEBIAN_FRONTEND=noninteractive
#apt-get -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" install nvidia-driver-535 -y
BASE_URL=https://us.download.nvidia.com/tesla
DRIVER_VERSION=450.80.02
curl -fSsl -O $BASE_URL/$DRIVER_VERSION/NVIDIA-Linux-x86_64-$DRIVER_VERSION.run
sh NVIDIA-Linux-x86_64-$DRIVER_VERSION.run
reboot
