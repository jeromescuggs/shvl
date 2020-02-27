#!/usr/bin/env bash

#  ███████╗ ██╗  ██╗ ██╗   ██╗ ██╗ shreveport's 
#  ██╔════╝ ██║  ██║ ██║   ██║ ██║ helper for
#  ███████╗ ███████║ ██║   ██║ ██║ verifying 
#  ╚════██║ ██╔══██║ ╚██╗ ██╔╝ ██║ lstart time 
#  ███████║ ██║  ██║  ╚████╔╝  ███████╗ 
#  ╚══════╝ ╚═╝  ╚═╝   ╚═══╝   ╚══════╝




# https://jonalmeida.com/posts/2013/05/26/different-ways-to-implement-flags-in-bash/

# wound up not using this code, but i left the url where i found it above

# grab token from local environment
SHVL_TOKEN=$(cat /home/$USER/.secrets/tbtoken-1)
SHVL_TOKEN2=$(cat /home/$USER/.secrets/tbtoken-2)

# setup variables 
#SHVL_PH=
#SHVL_MSG=

# allow setting of vars with flags 
while [ ! $# -eq 0 ]
do 
  case "$1" in 
    --phone | -p)
        SHVL_PH=$1
        ;;
      --msg | -m)
        SHVL_MSG=$2
        ;;
  esac 
  shift
done

echo "text ${SHVL_PH} with message ${SHVL_MSG}?"

# execute API call to textbelt
# curl -X POST https://textbelt.com/text \
#         --data-urlencode phone=$SHVL_PH \
#         --data-urlencode message=$SHVL_MSG \
#          -d key=$SHVL_TOKEN
