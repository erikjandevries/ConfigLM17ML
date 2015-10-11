echo -e "\033[1;33m\033[40m                                          \033[0m"
echo -e "\033[1;33m\033[40m   Installing the Atom text editor        \033[0m"
echo -e "\033[1;33m\033[40m                                          \033[0m"

wget -O ~/Downloads/atom-amd64.deb https://atom.io/download/deb
sudo dpkg -i ~/Downloads/atom-amd64.deb
