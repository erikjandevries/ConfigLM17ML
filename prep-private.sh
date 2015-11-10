echo -e "\033[1;33m\033[40m                                               \033[0m"
echo -e "\033[1;33m\033[40m   Executing private script(s)                 \033[0m"
echo -e "\033[1;33m\033[40m                                               \033[0m"

mkdir -p private
touch ./private/prep-private.sh
cd private
. prep-private.sh
cd ..

echo -e "\033[1;33m\033[40m                                               \033[0m"
echo -e "\033[1;33m\033[40m   Finished executing private script(s)        \033[0m"
echo -e "\033[1;33m\033[40m                                               \033[0m"

