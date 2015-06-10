echo -e "\033[1;33m\033[40m                                                      \033[0m"
echo -e "\033[1;33m\033[40m   Preparing for Remote Desktop sessions using X2Go   \033[0m"
echo -e "\033[1;33m\033[40m                                                      \033[0m"

. prep-MATE

echo -e ""
echo -e "\033[1;33mInstalling OpenSSH Server\033[0m"
sudo apt-get install -y openssh-server

echo -e ""
echo -e "\033[1;33mAdding X2Go PPA repository\033[0m"
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:x2go/stable
sudo apt-get update

echo -e ""
echo -e "\033[1;33mInstalling X2Go Server\033[0m"
sudo apt-get install -y x2goserver

echo -e ""
echo -e "\033[1;33mInstalling X2Go Client\033[0m"
sudo apt-get install -y x2goclient

echo -e ""
echo -e "\033[1;33m\033[40m                                                               \033[0m"
echo -e "\033[1;33m\033[40m   Finished preparing for Remote Desktop sessions using X2Go   \033[0m"
echo -e "\033[1;33m\033[40m                                                               \033[0m"
echo -e ""

