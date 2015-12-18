echo -e "\033[1;33m\033[40m                                     \033[0m"
echo -e "\033[1;33m\033[40m   Installing driver for WLAN USB    \033[0m"
echo -e "\033[1;33m\033[40m                                     \033[0m"

sudo apt-get install -y linux-firmware-nonfree
sudo modprobe b43
