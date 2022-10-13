apt update -y;
apt upgrade -y;

apt install software-properties-common -y;

add-apt-repository ppa:neovim-ppa/stable -y;
apt update -y;

apt install neovim -y;

