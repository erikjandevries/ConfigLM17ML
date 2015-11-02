echo -e "\033[1;33mCreating and activating a temporary VirtualEnv\033[0m"
ENV_NAME=${1:-env}
virtualenv $ENV_NAME
source $ENV_NAME/bin/activate

echo -e ""
echo -e "\033[1;33mCreating symbolic links for using PyGTK (with matplotlib) in the virtualenv\033[0m"
ln -sf /usr/lib/python2.7/dist-packages/{glib,gobject,cairo,gtk-2.0,pygtk.py,pygtk.pth} $ENV_NAME/lib/python2.7/site-packages

echo -e ""
echo -e "\033[1;33mConfiguring SSL for pip in the VirtualEnv\033[0m"
pip install -U pyopenssl ndg-httpsclient pyasn1

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mgprof2dot\033[1;33m for visualising profiler data\033[0m"
pip install -U gprof2dot

echo -e ""
echo -e "\033[1;33mInstalling \033[1;32mrequests\033[1;33m for downloading files\033[0m"
pip install -U requests

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
echo -e "\033[1;33mInstalling \033[1;32mpsycopg2\033[1;33m in the VirtualEnv\033[0m"
pip install -U psycopg2

. prep-basemap.sh

echo -e ""
echo -e "\033[1;33mPip list inside the VirtualEnv\033[0m"
pip list
