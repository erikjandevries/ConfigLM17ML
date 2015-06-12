echo -e "\033[1;33m\033[40m                                                        \033[0m"
echo -e "\033[1;33m\033[40m   Creating a temporary VirtualEnv and testing Theano   \033[0m"
echo -e "\033[1;33m\033[40m                                                        \033[0m"

echo -e ""
echo -e "\033[1;33mCreating and activating a temporary VirtualEnv\033[0m"
virtualenv env
source env/bin/activate

echo -e ""
echo -e "\033[1;33mConfiguring SSL for pip in the VirtualEnv\033[0m"
pip install pyopenssl ndg-httpsclient pyasn1

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mnumpy\033[1;33m in the VirtualEnv\033[0m"
pip install numpy

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mnose\033[1;33m in the VirtualEnv\033[0m"
pip install nose

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mTheano\033[1;33m in the VirtualEnv\033[0m"
pip install Theano

echo -e ""
echo -e "\033[1;33m\033[44m Running a test-script with Python \033[0m"
python test_Theano.py

echo -e ""
echo -e "\033[1;33mDeactivating and removing the VirtualEnv\033[0m"
deactivate
rm -rf env

echo -e ""
echo -e "\033[1;33m\033[40m                                                                 \033[0m"
echo -e "\033[1;33m\033[40m   Finished creating a temporary VirtualEnv and testing Theano   \033[0m"
echo -e "\033[1;33m\033[40m                                                                 \033[0m"
echo -e ""

