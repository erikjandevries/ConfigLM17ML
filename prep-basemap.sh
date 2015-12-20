echo -e "\033[1;33m\033[40m                                                                \033[0m"
echo -e "\033[1;33m\033[40m   Installing the basemap extension to the matplotlib library   \033[0m"
echo -e "\033[1;33m\033[40m                                                                \033[0m"

wget -O ~/Downloads/basemap-1.0.7.tar.gz http://sourceforge.net/projects/matplotlib/files/matplotlib-toolkits/basemap-1.0.7/basemap-1.0.7.tar.gz
tar -zxvf ~/Downloads/basemap-1.0.7.tar.gz

export GEOS_DIR=~/GEOS/
cd basemap-1.0.7/geos-3.3.3
./configure --prefix=$GEOS_DIR
make
make install
cd ..
python setup.py install
cd ..
rm -rf basemap-1.0.7


# echo -e "\033[1;33m\033[40m                                                                \033[0m"
# echo -e "\033[1;33m\033[40m   Installing the Python Imaging Library                        \033[0m"
# echo -e "\033[1;33m\033[40m                                                                \033[0m"
#
# wget -O ~/Downloads/Imaging-1.1.7.tar.gz http://effbot.org/downloads/Imaging-1.1.7.tar.gz
# tar -zxvf ~/Downloads/Imaging-1.1.7.tar.gz
#
# cd Imaging-1.1.7
# python setup.py install
# cd ..
# rm -rf Imaging-1.1.7


echo -e "\033[1;33m\033[40m                                                                \033[0m"
echo -e "\033[1;33m\033[40m   Installing pillow                                            \033[0m"
echo -e "\033[1;33m\033[40m                                                                \033[0m"
pip install pillow

# sudo apt-get install libjpeg-dev
