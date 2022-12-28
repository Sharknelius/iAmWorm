#!/bin/bash
clear
cap=50
again="y"
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'
#again=""

function checkCap ()
{
if [ $tired -ge $cap ]
then
((tired = cap))
break
echo -e "${RED}You are too tired to dig anymore. Try eating some food from the locations directory.${NC}"
else
read -p "Dig again? y/n " again
fi
}
#check if tired is negative
if [ $tired -lt 0 ]
then
((tired = 0))
fi
#start digging!
if [ $tired -lt 50 ]
then 
while [ $again == "y" ]
do
read -p "How many minutes will you dig for? " min
if [ "$min" -lt 11 ]
then
echo -e "${RED}You did not dig a very good hole.${NC} Put more effort into it!"
((tired += 5))
((health +=5))
checkCap
elif [ "$min" -lt 19 ] && [ "$min" -gt 10 ]
then 
echo -e "${CYAN}You dug a decent little hole.${NC}"
((tired += 10))
((health +=10))
checkCap
elif [ "$min" -lt 39 ] && [ "$min" -gt 18 ]
then 
echo -e "${CYAN}Wow. This is a great hole.${NC}"
((tired += 15))
((health +=20))
checkCap
elif [ "$min" -gt 38 ]
then 
echo -e "${RED}You are very tired. Why did you dig so long? ):${NC} "
((tired += 30))
((health +=10))
checkCap
fi
done
else
echo -e "${RED}You are too tired to dig. Try eating some food from the locations directory.${NC}"
fi
