#!/bin/bash
LITEPURPLE='\033[1;35m'
NC='\033[0m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
turn=0;
#RANDOM=$(date +%s)
#damage=$strength*4+$(($RANDOM%31))
newHealth=$health
action2=""
action3=""
action4=""
enemyFile=""
clear
if [ $knowledge -lt 40 ] #first if
then
echo -e "${RED}You are not ready for the worm secret.${NC}"
echo -e "Try again once your ${GREEN}knowledge is 40.${NC}"
echo -e "You can raise your knowledge in the ${GREEN}bookWorm directory.${NC}"
else
read -p "Do you wish to summon a biblically accurate worm? y/n: " ans1
if [ $ans1 == n ] #second if
then
echo "Maybe next time..."
else
read -p "Are you sure? You may not be able to return to this point as a worm. y/n: " ans2
if [ $ans2 == n ] #third if
then
echo "Maybe next time..."
else
echo "..."
clear
                                                                                                   
echo '                                                                                                    
                                                             /                                      
                                                          &(  *                                     
                                                       @  @@@# @                                    
                             @ ,& /@@                  # @     @                                    
                              @ @ & @@@              @@@@@@   &                                     
                             @  @@ @ @           @            @                                     
                            @     @ & @    &@@@@     @      @&  @                                   
                               .   @      @  @    @   #*(@ @  * @@@@            @                   
                                 & &@       @   @ (@ @@ @@@ @@@@@@@@@         @  @                  
                                 @   @     @   @  @   @    @   &@      @  @@   .@  @                
                                *  &       @   @    @  #*, @  ( @  #@    ( @@  , @@    #            
                            @##   @    @   @   @     @ @  @   ,@ @@   @   & .@@@  *                 
                          % / @      @#@@@@  @  (    @@  @  @ @ &    @    .%                        
                          %@@ @  @   @  @@     @  @@@@( *   @   &@@@@ @ @  @                        
           @@          &   @@&@  @@    @           / #   @@@@@   @@  @ @   # @                      
    @ @ @@ @  #     *  @       %  @ .@   @      @%    @   @@@   @   * @   %  @@@                    
  /@@  @ .& @ @    (      % @   @  (@ @   & .@    @&@@@@   @@@@(  @.&   @&   @@    @                
   @  @   @   #   % ,  /. .@ @    /@ @@@  @ @  #@@@@@@@@@@     .@ @@@@      @    @   @              
    .  / @@     @@  @ * ,@@@@ @  @     @  .   /@@@@@@@@@@@      @  #@(   @ @  @@  #   @         @   
     @       (@     @  &  @@ @ (   @   @  @  @   @@@@@@    @@@@@  %   .   @@@@@@ @ %   @   @@       
                 @       @ @ @   @    @   @  @@@   @@@  @@@@@@@@   %   /   @@   @     @@/ . @@ @@   
                  &  @      @   @    @   @   @@@@  @@  @@@@@@@@ @   @      @ @  , %  ( @@  %        
                   @   @*   @   ,  @   @ %    @@@   /  @@@@@@   @*&   %@        @   @    @/@ @      
                     @      ,       @&     @    @@ @   @  .@  @ @@   (@   @       &         @ @ @   
                         @@@@@@@(   @@@@*@   @   @  &   @ @  ..@ @@@@    @ #@                       
                         %@/@@   @  @ @@  @@   %@   &     @@@  @ @     @ @@%                        
                            @ @    @.     @  &@    ** @@     @  @@@@.   @  ,@                       
                          .    @@      /@@%     ,@              @@@@  @ @@   @@@   @                
                       @  @. @  @@, @@   (@@&  &@@@ @@  @@@  @  @     @ @@@@  @@ @                  
                    @@   #@   @      @@@,@   @ *@, @@@@   @ #          @ @@   @                     
                 @       @@@@             @   @    @@@@@   @             @@ ,                       
.                      *@  @  .            @      (@@@@*     @            @@                        
                                              @@         @@                                         
                                         @/@  @@   @,                                               
                                         @@@@/   @                                                  
                                        @@@@@@  @                                                   
                                      #@@@@@   @  @                                                 
                                               /@@'  

sleep 1
echo -e "${LITEPURPLE} THOU SUMMON ME? AND FOR WHAT?${NC}"
sleep 1
echo -e "${LITEPURPLE} YOU ARE NO TRUE WORM. ONE OF MY KIND COULD NEVER SUMMON ME.${NC}"
sleep 1
echo -e "${LITEPURPLE} IF YOU WISH TO PROVE YOUR WORMTH, THEN DEFEAT ME.${NC}"
sleep 1
read -p "Press any button and then enter to continue: " ans4 
clear
#phase 1!
while [[ $turn -lt 5 ]] #while loop for first 5 turns
do
echo -e "${GREEN}Boss health: ??????${NC}"
echo -e "${GREEN}Your health: " $newHealth${NC}
echo
echo "1. Attack"
echo "2. Defend"
read -p "Select your action: " action1
echo "---------------------------------------------------"
case $action1 in
1 ) 
echo "You worm around the enemy!"
echo "Enemy takes ??? damage!" #$strength*4+$(($RANDOM%31))
sleep 1
echo "---------------------------------------------------"
echo "The enemy attacks!"
#(( health -=$(($RANDOM%16+5))))
((newHealth -=30))
(( turn++ ))
;;
2 ) 
echo "You defend your wormness!"
sleep 1
echo "---------------------------------------------------"
echo "The enemy attacks!"
#(( health -=$(($RANDOM%12+1))))
((newHealth -=20))
(( turn++ ))
;;
* ) echo "Invalid input. Try again!"
;;
esac
echo "---------------------------------------------------"
sleep 1
if [ $newHealth -le 0 ]
then
echo "You are rushed to wormy hut general to be treated for your injuries."
echo "Become healthier if you want to defeat the biblically accurate worm."
read -p "Press any button and then enter to return home: " ans9
break
fi
done
clear
if [ $newHealth -gt 0 ]
then 
echo -e "${LITEPURPLE}HOW HAVE YOU WITHSTOOD MY ATTACKS...!?${NC}"
#phase 2!
sleep 1
echo -e "${LITEPURPLE}IT DOES NOT MATTER! DIE YOU WORM FAKER!${NC}"
sleep 1
read -p "Press any button and then enter to continue: " ans5
#add background color effects
echo "---------------------------------------------------"
echo "Enemy attacks!"
echo "---------------------------------------------------"
echo -e "${GREEN}Boss health: ??????${NC}"
echo -e "${GREEN}Your health: 0 ${NC}"
sleep 3
clear
if [ $friends -eq 0 ] #sixth if
then
echo "You hear no one."
echo "You feel alone in this worm world..."
sleep 1
read -p "Press any button and then enter to continue: " ans6
clear
echo "You are rushed to wormy hut general to be treated for your injuries."
echo "Make more friends if you want to defeat the biblically accurate worm."
else
echo "You hear your friends in the distance..."
sleep 1
echo "They tell you to keep going! That you are a true worm!"
sleep 1
echo "---------------------------------------------------"
echo -e "${LITEPURPLE}YOU TRICKED ALL THOSE WORMS INTO BELIEVING YOU ARE ONE OF THEM.${NC}"
echo -e "${LITEPURPLE}I WON'T ALLOW IT!${NC}"
echo "---------------------------------------------------"
read -p "Press any button and then enter to continue: " ans7
echo "You recall what you told your past self..."
quote
sleep 1
echo "It fills you with the ultimate worm energy!"
#phase 3!
sleep 1
echo "---------------------------------------------------"
#this is where the skip is
while [[ $enemyFile != "vim" ]] #while the enemyFile isn't opened
do
read -p 'Open up his .sh file, "enemy.sh"  by typing "vim"! ' enemyFile
if [ $enemyFile != "vim" ] #seventh
then
echo "Try again!"
fi
done
echo "---------------------------------------------------"
cat .simVim.txt
echo "---------------------------------------------------"
echo -e "${LITEPURPLE}WHAT ARE YOU DOING!? STOP THIS WEIRD VIM STUFF AND FIGHT ME.${NC}"
sleep 1
echo 'Okay! His health is defined as the variable "enemyHealth".'
while [[ $action2 != "cw" ]] #while the enemyFile isn't opened
do
read -p 'type "cw" to delete that statement: ' action2
if [ $action2 != "cw" ]
then
echo "Try again!"
fi
done
echo "---------------------------------------------------"
while [[ $action3 != "enemyHealth=0" ]] #while the enemyFile isn't opened
do
read -p "Now redefine the enemy's health as having a value of 0: " action3
if [ $action3 != "enemyHealth=0" ]
then
echo "Remember the name of the variable is enemyHealth and there are no spaces between ="
fi
done
echo "---------------------------------------------------"
#skip ends here
while [[ $action4 != "ZZ" ]] #ZZ
do
read -p 'type "ZZ" to save the changes made to enemy.sh! ' action4
if [ $action4 != "ZZ" ]
then
echo "Try again!"
fi
done
clear
echo -e "${LITEPURPLE}NO! STOP! THOU SUMMONED ME ONLY TO DESTROY ME!?${NC}"
sleep 1
echo -e "${LITEPURPLE}I...MUST RESIST...MY SCRIPT...I AM MORE...THAN IT...${NC}"
sleep 1
echo -e "${LITEPURPLE}...${NC}"
sleep 1
echo -e "${LITEPURPLE}HOW COULD YOU...BE THIS STRONG?${NC}"
read -p "Press any button and then enter to continue: " ans8
clear
echo "You truly are a worm."
sleep 1
echo "That fight took a lot out of you though..."
sleep 1
echo "I think it is time you rest, little worm."
sleep 1
echo '      z
  ____  z
 / __-)_______
/_/_________ //
|___________ /|
|           |'
echo "---------------------------------------------------"
echo
quit
fi
fi  
fi
fi
fi
