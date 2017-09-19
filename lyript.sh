#!/bin/bash
#author:mohamed farrag
#email:mohamedfarrag@protonmail.com
echo Welcome To The :
cat << !

| | \ \ / /  _ \|_ _|  _ \_   _|
| |  \ V /| |_) || || |_) || |  
| |___| | |  _ < | ||  __/ | |  
|_____|_| |_| \_\___|_|    |_|  
    
Made by:©Mohamed Farrag 
!
echo -en '\n'
echo -n "Enter The Artist Name?"
read artist
artist=$(echo "${artist// /}" | tr '[:upper:]' '[:lower:]')

echo -n "Enter The Song's Name?"
read song
song=$(echo "${song// /}" | tr '[:upper:]' '[:lower:]')

RED='\033[0;31m'
NC='\033[0m' # No Color
echo -e "${RED}Please Wait..."${NC}
w3m  -dump -M https://www.azlyrics.com/lyrics/${artist// /}/${song// /}.html

