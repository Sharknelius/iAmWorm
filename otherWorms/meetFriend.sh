#!/bin/bash
YELLOW='\033[1;33m'
NC='\033[0m'
RED='\033[0;31m'
CYAN='\033[0;36m'
haveFriend=0


chooseLetter() {
read -p "Choose a letter to say: " letter
echo
echo '------------------------------------------------------------'
echo
}

friendCheck () {
echo
echo '------------------------------------------------------------'
echo
if [ $haveFriend -eq 1 ] #1st if
then
if [ $number -eq 1 ] #2nd if
then
if [ $friend1 -ne 1 ] #3rd if
then
((friend1++))
((friends++))
echo -e "Yay! ${CYAN}You made a friend.${NC} Now you have someone to worm with."
else
echo -e "${CYAN}This worm is already your friend!.${NC}"
fi
elif [ $number -eq 2 ] #2nd if
then
if [ $friend2 -ne 1 ] #3rd if
then
((friend2++))
((friends++))
echo -e "Yay! ${CYAN}You made a friend.${NC} Now you have someone to worm with."
else
echo -e "${CYAN}This worm is already your friend!.${NC}"
fi
elif [ $number -eq 3 ] #2nd if
then
if [ $friend3 -ne 1 ] #3rd if
then
((friend3++))
((friends++))
echo -e "Yay! ${CYAN}You made a friend.${NC} Now you have someone to worm with."
else
echo -e "${CYAN}This worm is already your friend!${NC}"
fi
elif [ $number -eq 4 ] #2nd if
then
if [ $friend4 -ne 1 ] #3rd if
then
((friend4++))
((friends++))
echo -e "Yay! ${CYAN}You made a friend.${NC} Now you have someone to worm with."
else
echo -e "${CYAN}This worm is already your friend!.${NC}"
fi
elif [ $number -eq 5 ] #2nd if
then
if [ $friend5 -ne 1 ] #3rd if
then
((friend5++))
((friends++))
echo -e "Yay! ${CYAN}You made a friend.${NC} Now you have someone to worm with."
else
echo -e "${CYAN}This worm is already your friend!.${NC}"
fi
fi
else
echo -e "You didn't becomes friends with that worm. ${RED}Try again!${NC} They probably will forget everything anyway!"
fi
}
clear
read -p "Choose a number 1 through 5 to pick which worm to talk to: " number
echo -e " ${YELLOW}A worm approaches. Act natural.${NC}"
if [ $number -eq 1 ]
then
echo "Choose a reponse to greet the worm:"
echo -e "${YELLOW}A)${NC} worm."
echo -e "${YELLOW}B)${NC} why are you a worm"
echo -e "${YELLOW}C)${NC} what are your thoughts on water"
chooseLetter
case "$letter" in
A|a )
echo "the worm agrees and leaves."
;;
B|b )
echo "the worm begins to fear its own existence and leaves."
;;
c )
echo "the worm likes water and decides to become your friend."
((haveFriend++))
;;
* )
echo "Not a valid response. The worm leaves."
;;
esac
friendCheck
elif [ $number -eq 2 ]
then
echo -e "${YELLOW}Ask the worm about its hobbies:${NC}"
echo -e "${YELLOW}A)${NC} do you enjoy being worm"
echo -e "${YELLOW}B)${NC} play any tennis?"
echo -e "${YELLOW}C)${NC} i like working in unix. how about you?"
chooseLetter
case "$letter" in
A|a )
echo "the worm actually wishes they were a funny goose and leaves."
;;
B|b )
echo "the worm doesn't have arms to play tennis, but admits to wanting wings. you bond over birds and become friends."
((haveFriend++))
;;
C|c )
echo "the worm has no idea what unix is and becomes your friend out of pity."
((haveFriend++))
;;
* )
echo "Not a valid response. The worm leaves."
;;
esac
friendCheck
elif [ $number -eq 3 ]
then
echo -e "${YELLOW}Try to make the worm laugh:${NC}"
echo -e "${YELLOW}A)${NC} bees am i right?"
echo -e "${YELLOW}B)${NC} *perform a funny worm dance*"
echo -e "${YELLOW}C)${NC} chmod u+me be friends"
chooseLetter
case "$letter" in
A|a )
echo "The worm doesn't care for your joke, but likes bees, so you become friends."
((haveFriend++))
;;
B|b )
echo "The worm thinks the dance is funny, but the dance attracts a bird, and the worm is swept away. oops."
;;
C|c )
echo "The worm immediately becomes your friend."
((haveFriend++))
;;
* )
echo "Not a valid response. The worm leaves."
;;
esac
friendCheck
elif [ $number -eq 4 ]
then
echo -e "${YELLOW}This worm looks busy, but can you get their attention?:${NC}"
echo -e "${YELLOW}A)${NC} hop on top of the worm"
echo -e "${YELLOW}B)${NC} block the worm's way"
echo -e "${YELLOW}C)${NC} call out to the worm"
chooseLetter
case "$letter" in
A|a )
echo "The worm is a fan of wrestling and the two of you have a friendly match and become friends."
((haveFriend++))
;;
B|b )
echo "The worm swiftly inches past you and leaves."
;;
C|c )
echo "The worm ignores your call and leaves."
;;
* )
echo "Not a valid response. The worm leaves."
;;
esac
friendCheck
elif [ $number -eq 5 ]
then
echo -e "${YELLOW}This worm looks a little sad, so cheer them up:${NC} "
echo -e "${YELLOW}A)${NC} circle around them"
echo -e "${YELLOW}B)${NC} use the power of the dark arts to scare them out the sadness"
echo -e "${YELLOW}C)${NC} whisper kind words"
chooseLetter
case "$letter" in
A|a )
echo "The worm watches you inch circles around and gets dizzy. Then they leave in disarray."
;;
B|b )
echo "The worm is really into wormcraft (worm dark arts) and loves your vibes. You become friends."
((haveFriend++))
;;
C|c )
echo "The worm thinks you are putting a curse on them and leaves in panic."
;;
* )
echo "Not a valid response. The worm leaves."
;;
esac
friendCheck
else
echo "This is not a valid number. You are friendless. Wormless even."
fi

