echo -e "\033[1;33m\033[40m                                               \033[0m"
echo -e "\033[1;33m\033[40m   Installing Git and cloning the repository   \033[0m"
echo -e "\033[1;33m\033[40m                                               \033[0m"

sudo apt-get -f install
sudo apt-get install -y git
mkdir Repositories
cd Repositories
git clone https://github.com/erikjandevries/ConfigLM17ML
cd ConfigLM17ML
source start-all.sh
