. prep-MATE

echo -e ""
echo -e "\033[1;33mInstalling xrdp and tightvncserver\033[0m"
sudo apt-get install -y xrdp tightvncserver

echo -e ""
echo -e "\033[1;33mConfiguring xrdp to use MATE instead of Cinnamon\033[0m"
sudo sed -i 's:^. /etc/X11/Xsession:#. /etc/X11/Xsession\nmate-session:' /etc/xrdp/startwm.sh
touch .Xauthority
sudo service xrdp restart

echo -e ""
echo -e "\033[1;33mInstalling Remmina remote desktop client (rdp + vnc)\033[0m"
sudo apt-get install -y remmina remmina-plugin-rdp remmina-plugin-vnc

