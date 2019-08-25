#!/bin/bash
clear
SNAME=$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")
#echo "Your Script Name is $SNAME"
if [ $SNAME == "djaman-remover.sh" ]
then 
echo "................"
else
echo "Our System Detect Modification In This Script So Please Download Original From :--https://djamanmix.ooo/bgscrips"
exit
fi
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`
bold=$(tput bold)
normal=$(tput sgr0)
#echo "::::::::${green}Welcome To ${red} DJAman-Remover ${reset} ${green} Image Background Remover ${reset}"
echo "${red}
      |~\ o _ ._ _  _ ._   |~) _._ _  _    _._
      |_/_|(_|| | |(_|| |~~|~\}_| | |(_)\/}_| ${reset}"
      echo "${yellow}##########Version :-1.11 By ${bold}Aman Chauhan${normal}${yellow} #########${reset}"
      
echo "${red}##########Our Website ${bold}https://djamanmix.OoO ${normal}${red} #########${reset}"
read -p "Enter Your Original Image Path : " path
echo "You Entered This Path :: ${red} $path ${reset}"
echo "${bold}Our Website:-DjamanMix.OoO${normal}"
read -p "Enter Your Save Path  : " spath
echo "You Entered Save Path :: ${red} $spath ${reset}"

echo "${bold}${green}Choose Your Options:-${reset}${normal}"

echo "1.${red}Remove Background Ai${reset}"

echo "2.${red}Cancel${reset}"

read -p "Enter Your Choice:- " choice
#echo "{$choice}"
##Var Of If Statement
a=1
b=2
if [ $choice == $a ] 
then 

    #If they are equal then print this 

    echo "${red}Checking Our Requirements...${reset}"
    echo "${bold}${green}::::::::All Done Started Removing...::::::::${reset}${normal}${yellow}"

curl -H 'X-API-Key: c9D6aUCBXtetpFapN6uQumbs'           \
       -F 'image_file=@ '$path''                 \
       -F 'size=auto'                                     \
       -f https://api.remove.bg/v1.0/removebg -o $spath
       
       ####error
res=$?
if test "$res" != "0"; then
   echo "${reset}${yellow}DJAman-Remover Says${reset}:-${red}the curl command failed with: $res ${reset}"

   
else 
   
   echo ":::::::-All Good😍😍 Your Photo Background Has Been Removed-:::::::::"
   echo "${bold}Here Is Your Pic:-$spath ${normal}"
   
fi
########else
else

    #else print this 
    echo "  ${bold} Thanks馃檹馃檹 For Using Our Script Team Djaman ${red}djamanmix.ooo${reset}${normal}"
    exit
fi 
