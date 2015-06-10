echo -e "\033[1;33m\033[40m                                                   \033[0m"
echo -e "\033[1;33m\033[40m   Creating a temporary VirtualEnv and             \033[0m"
echo -e "\033[1;33m\033[40m   building Wheels for Machine Learning packages   \033[0m"
echo -e "\033[1;33m\033[40m                                                   \033[0m"

echo -e ""
echo -e "\033[1;33mCreating and activating a temporary VirtualEnv\033[0m"
virtualenv env
source env/bin/activate

echo -e ""
echo -e "\033[1;33mCreating symbolic links for using PyGTK (with matplotlib) in the virtualenv\033[0m"
ln -sf /usr/lib/python2.7/dist-packages/{glib,gobject,cairo,gtk-2.0,pygtk.py,pygtk.pth} env/lib/python2.7/site-packages

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mnumpy\033[1;33m in the VirtualEnv\033[0m"
pip install -U numpy
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mpandas\033[1;33m in the VirtualEnv\033[0m"
pip install -U pandas
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mscipy\033[1;33m in the VirtualEnv\033[0m"
pip install -U scipy
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mnltk\033[1;33m in the VirtualEnv\033[0m"
pip install -U nltk
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mscikit-learn\033[1;33m in the VirtualEnv\033[0m"
pip install -U scikit-learn
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mmatplotlib\033[1;33m in the VirtualEnv\033[0m"
pip install -U matplotlib
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mTheano\033[1;33m in the VirtualEnv\033[0m"
pip install -U Theano

echo -e ""
echo -e "\033[1;33mPip list inside the VirtualEnv\033[0m"
pip list

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
