#!/usr/bin/env bash
# All colors:
RED='\033[0;31m'
WHITE='\033[0;37m'
GREEN='\033[0;32m'
#CYAN='\033[0;36m'
# bin_path is wrong, so we can see, if its working
bin_path="/home/$USER/bin"
# making a user based bin dictionary
if ! [ -d "$bin_path" ]; then
    echo -e "Folder $bin_path ${RED} doesn't exists ${WHITE}"
    mkdir "$bin_path"
    echo -e "Folder $bin_path had bin made"
else
    echo -e "Folder ${GREEN} exists ${WHITE}"
fi
echo "copying tmod into $bin_path"
cp tmod "$bin_path"
echo "Changing mod of tmod"
chmod 700 "$bin_path"/tmod
echo -e "now you can start using ${GREEN} TMOD ${WHITE} have fun!"
echo "Use tmod or tmod -h to see, what it can do :)"
exit 0
