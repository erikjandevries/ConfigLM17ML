echo -e "\033[1;33m\033[40m                                                   \033[0m"
echo -e "\033[1;33m\033[40m   Creating a temporary VirtualEnv and             \033[0m"
echo -e "\033[1;33m\033[40m   building Wheels for Machine Learning packages   \033[0m"
echo -e "\033[1;33m\033[40m                                                   \033[0m"

. create-VirtualEnvML.sh env

echo -e ""
echo -e "\033[1;33mDeactivating and removing the VirtualEnv\033[0m"
deactivate
rm -rf env

#echo -e ""
#echo -e "\033[1;33mPip list outside the virtualenv\033[0m"
#pip list

echo -e ""
echo -e "\033[1;33m\033[40m                                                   \033[0m"
echo -e "\033[1;33m\033[40m   Finished creating a temporary VirtualEnv and    \033[0m"
echo -e "\033[1;33m\033[40m   building Wheels for Machine Learning packages   \033[0m"
echo -e "\033[1;33m\033[40m                                                   \033[0m"
echo -e ""

