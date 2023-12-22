apt update -y
export DEBIAN_FRONTEND=noninteractive
apt-get -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" install nvidia-driver-535 -y


