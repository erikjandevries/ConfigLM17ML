echo -e "\033[1;33m\033[40m                                                         \033[0m"
echo -e "\033[1;33m\033[40m   Creating a temporary VirtualEnv and testing Jupyter   \033[0m"
echo -e "\033[1;33m\033[40m                                                         \033[0m"

echo -e ""
echo -e "\033[1;33mCreating and activating a temporary VirtualEnv\033[0m"
virtualenv env
source env/bin/activate

echo -e ""
echo -e "\033[1;33mConfiguring SSL for pip in the VirtualEnv\033[0m"
pip install pyopenssl ndg-httpsclient pyasn1

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mJupyter\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade jupyter

echo -e ""
echo -e "\033[1;33m\033[44m Running a test-script with Python \033[0m"
jupyter notebook jupyter_python_test.ipynb

echo -e ""
echo -e "\033[1;33mDeactivating and removing the VirtualEnv\033[0m"
# deactivate
# rm -rf env

echo -e ""
echo -e "\033[1;33m\033[40m                                                                  \033[0m"
echo -e "\033[1;33m\033[40m   Finished creating a temporary VirtualEnv and testing Jupyter   \033[0m"
echo -e "\033[1;33m\033[40m                                                                  \033[0m"
echo -e ""
