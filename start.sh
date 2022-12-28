#!/bin/bash
currPath=$(pwd); echo $currPath
OG_PS1=$PS1
myQuote='"You have no quote right now" - worm god'; export myQuote
health=10; export health
tired=0; export tired
knowledge=0; export knowledge
friends=0; export friends
#strength=0; export strength
#keeps track of your friends
friend1=0; export friend1
friend2=0; export friend2
friend3=0; export friend3
friend4=0; export friend4
friend5=0; export friend5
#keeps track if you answered quiz question
earth=0; export earth
flat=0; export flat
segmented=0; export segmented
ribbon=0; export ribbon
round=0; export round
pin=0; export pin
peanut=0; export peanut
spoon=0; export spoon
beard=0; export beard
arrow=0; export arrow

NC='\033[0m'
GREEN='\033[0;32m'
LIGHTRED='\033[1;31m'
PS1="${LIGHTRED}What will worm do in: \W > ${NC}"

function quote () {
echo -e "As a wise worm once said: "${GREEN}$myQuote${NC}
}
function quit () {
 echo "Thank you for being a worm! Goodbye."
 unset health
 unset tired
 unset knowledge
 unset friends
 unset myQuote
 unset friend1
 unset friend2
 unset friend3
 unset friend4
 unset friend5
 unset earth
 unset flat
 unset segmented
 unset ribbon
 unset round
 unset pin
 unset peanut
 unset spoon
 unset beard
 unset arrow
 PS1=$OG_PS1
}
function status () {
 echo -e "${GREEN}Health: $health ${NC}"
 echo -e "${GREEN}Tired: $tired ${NC}"
 echo -e "${GREEN}Knowledge: $knowledge ${NC}"
 #echo -e "${GREEN}Strength: $strength ${NC}"
 echo -e "${GREEN}Friends: $friends ${NC}"
}
export -f quote
export -f quit
export -f status
LIGHTRED='\033[1;31m'
NC='\033[0m'
cd $PWD
clear
echo -e "Welcome to ${LIGHTRED}I am worm${NC}"
echo
echo '      _____ '
echo '  ___/ ____ \____'
echo '( o___/    \_____)   <--- worm'
echo 
echo '------------------------------------------------------------'
echo
echo 'Your first task as a worm is to type "ls" into the terminal.'
echo "This will show you the options available for a worm to do."
echo 'Text files like howToDig.txt can be read by typing "cat howToDig.txt".'
echo 'You can type "cd" and then a directory like "holeDigging" to switch to a new activity.'
