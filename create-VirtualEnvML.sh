# echo -e "\033[1;33mInstalling the latest version of pip\033[0m"
# sudo -H pip install --upgrade pip
#
# echo -e ""
# echo -e "\033[1;33mInstalling the latest version of virtualenv\033[0m"
# sudo -H pip install --upgrade virtualenv

echo -e ""
echo -e "\033[1;33mCreating and activating a temporary VirtualEnv\033[0m"
ENV_NAME=${1:-env}
virtualenv $ENV_NAME
source $ENV_NAME/bin/activate

echo -e ""
echo -e "\033[1;33mCreating symbolic links for using PyGTK (with matplotlib) in the virtualenv\033[0m"
ln -sf /usr/lib/python2.7/dist-packages/{glib,gobject,cairo,gtk-2.0,pygtk.py,pygtk.pth} $ENV_NAME/lib/python2.7/site-packages

echo -e ""
echo -e "\033[1;33mCreating symbolic links for using Xlib in the virtualenv\033[0m"
ln -sf /usr/lib/python2.7/dist-packages/Xlib $ENV_NAME/lib/python2.7/site-packages

echo -e ""
echo -e "\033[1;33mConfiguring SSL for pip in the VirtualEnv\033[0m"
pip install --upgrade pyopenssl ndg-httpsclient pyasn1

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mPython Imaging Library\033[1;33m (PIL)\033[0m"
pip install --no-index -f http://dist.plone.org/thirdparty/ -U PIL --trusted-host dist.plone.org

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mPyAutoGUI\033[1;33m for controling the mouse and keyboard\033[0m"
pip install --upgrade pyautogui

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mgprof2dot\033[1;33m for visualising profiler data\033[0m"
pip install --upgrade gprof2dot

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mrequests\033[1;33m for downloading files\033[0m"
pip install --upgrade requests

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mnumpy\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade numpy
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mpandas\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade pandas
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mscipy\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade scipy
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mnltk\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade nltk
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mscikit-learn\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade scikit-learn
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mmatplotlib\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade matplotlib
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mTheano\033[1;33m in the VirtualEnv\033[0m"
# pip install --upgrade Theano
pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mLasagne\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip
echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mpsycopg2\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade psycopg2

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mJupyter\033[1;33m in the VirtualEnv\033[0m"
pip install --upgrade jupyter

# . prep-basemap.sh

echo -e ""
echo -e "\033[1;33mPip list inside the VirtualEnv\033[0m"
pip list
