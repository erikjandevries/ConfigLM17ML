echo -e "\033[1;33m\033[40m                                                    \033[0m"
echo -e "\033[1;33m\033[40m   Preparing for Qemu/KVM virtual machine hosting   \033[0m"
echo -e "\033[1;33m\033[40m                                                    \033[0m"

echo -e ""
echo -e "\033[1;33mInstalling qemu\033[0m"
sudo apt-get install -y qemu-system
sudo apt-get install -y qemu-utils

echo -e ""
echo -e "\033[1;33mInstalling virt-manager\033[0m"
sudo apt-get install -y libvirt-bin
sudo apt-get install -y virt-manager

echo -e ""
echo -e "\033[1;33mInstalling SPICE for KVM and virt-viewer\033[0m"
sudo apt-get install -y python-spice-client-gtk
sudo apt-get install -y virt-viewer

echo -e ""
echo -e "\033[1;33m\033[40m                                                             \033[0m"
echo -e "\033[1;33m\033[40m   Finished preparing for Qemu/KVM virtual machine hosting   \033[0m"
echo -e "\033[1;33m\033[40m                                                             \033[0m"
echo -e ""

