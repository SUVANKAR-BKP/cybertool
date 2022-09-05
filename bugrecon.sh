 #!/bin/bash

# Reset
nc='\033[0m'       # Text Reset

# Regular Colors

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
White='\033[0;37m'        # White

# Background
On_Blue='\033[44m'        # Blue
On_Yellow='\033[43m'      # Yellow
On_Black='\033[40m'       # Black



echo -e "$Red  ____  _    _  _____ _____  ______ _____ ____  _   _ " 
echo -e "$Red |  _ \| |  | |/ ____|  __ \|  ____/ ____/ __ \| \ | |"
echo -e "$Red | |_) | |  | | |  __| |__) | |__ | |   | |  | |  \| |"
echo -e "$Red |  _ <| |  | | | |_ |  _  /|  __|| |   | |  | | . . |"
echo -e "$Red | |_) | |__| | |__| | | \ \| |___| |___| |__| | |\  |"
echo -e "$Red |____/ \____/ \_____|_|  \_\______\_____\____/|_| \_|"


sleep 1

target=$1

if [[ $(id -u) != 0 ]]
 then
    echo -e "${Red}${On_Blue}\n[!] bugrecon.sh requires root privileges $nc \n"
    sleep 1
                            
    exit 1
fi

if ! [ $target ] 
 then
  echo -e "$Red\n[!] No target provided.$nc"
  echo -e "$On_Yellow>> $0 <example.com> $nc"
  sleep 1
  exit 1
fi

if [ ! -d /tmp/$target ]
then
        echo -e "$Green creating $1 $nc"
        mkdir /tmp/$target
fi

cd /tmp/$target

