#!/bin/bash
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'
again="y"
function wormCheck () {
echo -e "${CYAN}Correct!${NC}"
((knowledge +=5))
read -p 'List another type of worm? y/n ' again
if [ $again == "y" ]
then
clear
fi
}
clear
while [ $again == "y" ]
do
read -p "Name a type of worm listed in bookOfWorm.txt: " worm
case "$worm" in
Earthworm|earthworm|earthworms|Earthworms )
if [ $earth -eq 0 ]
then
wormCheck
(( earth++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
flatworm|Flatworm|flatworms|Flatworms )
if [ $flat -eq 0 ]
then
wormCheck
(( flat++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
segmented_worms|Segmented_worms|segmented_worm|Segmented_worms ) 
if [ $segmented -eq 0 ]
then
wormCheck
(( segmented++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
Ribbon_worms|ribbon_worms|Ribbon_worm|ribbon_worm )
if [ $ribbon -eq 0 ]
then
wormCheck
(( ribbon++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
Roundworms|roundworms|Roundworm|roundworm )
if [ $round -eq 0 ]
then
wormCheck
(( round++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
Pinworms|pinworms|Pinworm|pinworm )
if [ $pin -eq 0 ]
then
wormCheck
(( pin++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
Peanutworms|peanutworms|Peanutworm|peanutworm )
if [ $peanut -eq 0 ]
then
wormCheck
(( peanut++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
Spoonworms|spoonworms|Spoonworm|spoonworm )
if [ $spoon -eq 0 ]
then
wormCheck
(( spoon++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
Beardworms|bearworms|Beardworm|beardworm )
if [ $beard -eq 0 ]
then
wormCheck
(( beard++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
Arrowworms|arrowworms|Arrowworm|arrowworm )
if [ $arrow -eq 0 ]
then
wormCheck
(( arrow++ ))
else
echo -e "${RED}You already answered with this worm!${NC}"
read -p 'List another type of worm? y/n ' again
fi
;;
* )
echo "This is not in the bookOfWorm!!!"
echo -e "${RED}Remember to type _ if there is a space in the name!${NC}"
read -p 'Try again? y/n ' again
;;
esac
done

