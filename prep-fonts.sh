echo -e "\033[1;33m\033[40m                                     \033[0m" 
echo -e "\033[1;33m\033[40m   Installing Microsoft core fonts   \033[0m" 
echo -e "\033[1;33m\033[40m                                     \033[0m" 

echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
sudo apt-get install -y ttf-mscorefonts-installer

# xmessage -center -timeout 30 "The rest of the preparations should continue without requiring further user interaction."
