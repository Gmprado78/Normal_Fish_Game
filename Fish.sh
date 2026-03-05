#! /bin/bash
name=$1

#This is a game regarding a feud between a fisherman and a fish. We may never know the relationship between these two charachters until now. Before running ./Fish.sh add your name.



echo "You are fisherman named $name"
echo "Knock the health out of that FISH!"

my_health=100
bad_health=100
counter=0
game_end=0


#While fish is not dead and no game_end triggered
while [[ $my_health -ne 0 && $game_end -eq 0 ]]
do
	
	# GAME START MESSAGES
	#

	#Display after every other turn
	echo "Your health is $my_health"
	echo "Wild fish health is $bad_health"
	
	#Fish wrecklessly attacking you
	echo "OUCH the fish slapped you"
	my_health=$((my_health-10))
	echo "You took 10hp, you have $my_health hp"

	#Display attack to do
	echo "punch fish?(Y)"
	echo "don't punch fish.(N)"


	if [[ $my_health -eq 0 ]];
	then
	       echo "FISH has totally obliterated you."
	       ((game_end++))
	fi	       

	#CHECK IF FISH IS ABOUT TO DIE BEFORE NEXT ATTACK	
	#IF fish was hurt twice already(2hp)
		
	if [[ $bad_health -le 2 ]];
	then
		echo "You can still befriend this fish."
		echo "Give the fish a chance..???(Y/N)"

		read answerz
		
		#Player chose to spare the fish
		if [[ $answerz=='Y' || $answerz=='y' ]]
		then
			echo "The fish of an unknown name swims off to the sunset alone. It doesn't even look back. It did not wish to befriend you."
			$game_end=$((game_end+1))
			break
		fi

		#Player chose to not spare the fish
		if [[ $answerz=='N' || $answerz=='n' ]]
		then

			echo "Fish did not give you a chance. Fish whistles and calls its fishy friends. A shadow the size of a whale looms under your boat."
			echo "$name took -1000hp."
			echo "$name was destroyed by mysterious fish."
			echo "Game over."
			$game_end=$((game_end+1))
			break
		fi
	
	fi

	#READ ANSWER OF INITIAL PUNCH FISH OR DONT
	
	read answer

	if [[ $answer=='Y' || $answer=='y' ]]
	then
		#CHECK if im at full health and a puncher
		if [[ $answer=='Y' && $bad_health -eq 100 ]]
		then
			bad_health=$((bad_health-49))
		
			echo "do you really wanna punch it? It just a fish."
			echo "fish now has $bad_health hp"

			
		fi	

	if [[ $answer=='N' || $answer=='n' ]]

		#Choosing to not punch + different messages

		if [[ $answer=='N' && $counter==0 ]];
	       	then
			echo "Fish flinches.(You didnt punch it)"
			((counter++))
			
			
		
		elif [[ $answer=='N' && $counter==1 ]]; then
			echo "(Fish raises eyebrow).You really don't wanna punch it.. you paci-fisht."
			((counter++))
				

		elif [[ $answer=='N' && $counter=2 ]]; then
			echo "Fish smiles and waves. It makes you pinky promise to never hurt a fish.EVER."
			echo "do YOU accept this pinky promise? PUNCH or accept?(Y/N)"
			read
			

			if [[ $answer=='Y' ]]; then
				echo "Fish says do you wanna hang out. You hold nands and swim together.The fish tells you its name, its Anita a name that means grace. You watch the sunset. Gameover.. did you win...?"
				((game_end++))
			fi

			if [[ $answer=='N' ]]; then
				echo "fish grabs your fist and throws you to the side. GAME OVER."
				((game_end++))
			fi

		else
			echo "enter Y/N dude(plz restart script probs :] )"
			return
		fi		
	fi
	
done
#(While loops done here)
