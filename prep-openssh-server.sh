echo -e "\033[1;33m\033[40m                               \033[0m"
echo -e "\033[1;33m\033[40m   Installing OpenSSH Server   \033[0m"
echo -e "\033[1;33m\033[40m                               \033[0m"

sudo apt-get install -y openssh-server

sudo sed -i 's/Port 22/Port 22\nPort 3022/' /etc/ssh/sshd_config

sudo service ssh restart

echo -e "\033[1;33m\033[40m                                        \033[0m"
echo -e "\033[1;33m\033[40m   Finished installing OpenSSH Server   \033[0m"
echo -e "\033[1;33m\033[40m                                        \033[0m"
echo -e ""
