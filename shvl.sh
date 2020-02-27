#!/usr/bin/env bash

if [[ -z $1 ]]; then 
echo -n "
 ███████╗ ██╗  ██╗ ██╗   ██╗ ██╗    Script to 
  ██╔════╝ ██║  ██║ ██║   ██║ ██║   Help snow stop being
   ███████╗ ███████║ ██║   ██║ ██║  Very freakin' 
    ╚════██║ ██╔══██║ ╚██╗ ██╔╝ ██║ Late!!!!!!!
     ███████║ ██║  ██║  ╚████╔╝  ███████╗
      ╚══════╝ ╚═╝  ╚═╝   ╚═══╝   ╚══════╝"
echo " "
echo "--------- [ usage ] -----------"
echo "make sure the textbelt token is"
echo "stored in $USER/.secret/token-1"
echo "-------------------------------"
echo "flag  |  description           "
echo "-------------------------------"
echo " -p   |  sets phone number     "
echo " -m   |  sets message          "
echo "==============================="
echo ""
echo "example: "
echo "shvl -p 13185551234 -m \"start time is 0430.\""
fi

# get token from config and set variable
SHVL_TOKEN=$(cat /home/$USER/.secret/token-1)

# set phone and msg manually
while getopts p:m: option 
do 
 case "${option}" 
 in 
 p) SHVL_PH=${OPTARG};; 
 m) SHVL_MSG=${OPTARG};; 
 esac 
done 
 
# echo $SHVL_PH
# echo $SHVL_MSG 

curl -X POST https://textbelt.com/text \
      --data-urlencode phone=$SHVL_PH \
      --data-urlencode message="$SHVL_MSG" \
       -d key=$SHVL_TOKEN 


