echo -e "\033[1;33m\033[40m                                               \033[0m"
echo -e "\033[1;33m\033[40m   Preparing Python 2.7 for Machine Learning   \033[0m"
echo -e "\033[1;33m\033[40m                                               \033[0m"

echo -e ""
echo -e "\033[1;33mInstalling Python setup tools and developer tools\033[0m"
sudo apt-get install -y python-setuptools python-dev python-gtk2-dev build-essential

#echo -e ""
#echo -e "\033[1;33mInstalling developer tools\033[0m"
sudo apt-get install -y build-essential python-dev libatlas-dev libatlas3-base liblapack-dev gfortran libpng12-dev libfreetype6-dev libopenblas-base libopenblas-dev graphviz

sudo apt-get install -y python-dev libpq-dev

sudo apt-get install -y python-xlib
sudo apt-get install -y sudo apt-get scrot

echo -e ""
echo -e "\033[1;33mInstalling prerequisites for SSL for pip\033[0m"
sudo apt-get install -y libffi-dev libssl-dev

echo -e ""
echo -e "\033[1;33mInstalling pip\033[0m"
# Using apt-get to install python-pip gives an old version; using easy_install instead!
sudo easy_install -U pip

echo -e ""
echo -e "\033[1;33mConfiguring SSL for pip\033[0m"
sudo -H pip install --upgrade pyopenssl ndg-httpsclient pyasn1

echo -e ""
echo -e "\033[1;33mInstalling virtualenv\033[0m"
sudo -H pip install --upgrade virtualenv

echo -e ""
echo -e "\033[1;33mInstalling gprof2dot for visualising profiler data\033[0m"
sudo -H pip install --upgrade gprof2dot

#sudo apt-get install -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

echo -e ""
. prep-VirtualEnv.sh

echo -e "\033[1;33m\033[40m                                                        \033[0m"
echo -e "\033[1;33m\033[40m   Finished preparing Python 2.7 for Machine Learning   \033[0m"
echo -e "\033[1;33m\033[40m                                                        \033[0m"
echo -e ""
