echo -e "\033[1;33m\033[40m                           \033[0m"
echo -e "\033[1;33m\033[40m   Installing PostgreSQL   \033[0m"
echo -e "\033[1;33m\033[40m                           \033[0m"

sudo touch /etc/apt/sources.list.d/pgdg.list
echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" | sudo tee -a /etc/apt/sources.list.d/pgdg.list

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update

sudo apt-get install -y postgresql-9.4-postgis-2.1 postgresql-9.4 postgresql-contrib-9.4 pgadmin3

echo -e "\033[1;33m\033[40m                                    \033[0m"
echo -e "\033[1;33m\033[40m   Finished installing PostgreSQL   \033[0m"
echo -e "\033[1;33m\033[40m                                    \033[0m"
echo -e ""
