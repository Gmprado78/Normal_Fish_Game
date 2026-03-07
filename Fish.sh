#! /bin/bash
name=$1

#This is a game regarding a feud between a fisherman and a fish. Punch or Before running ./Fish.sh add your name. 


startword=0

while [[ startword -ne 0 ]]
do
	echo "You are fisherman named $name"
	echo "Knock the health out of that FISH!"
	echo " "
	sleep 0.5
	((startword++))
done
my_health=100
bad_health=100
counter=0
game_end=0


#While fish is not dead and no game_end triggered
while [[ $my_health -ne 0 || $game_end -ne 0 ]]
do
	#echo "$counter counter is this long"	
	# GAME START MESSAGES
	#

	#Display after every other turn
	echo "Your health is $my_health"
	echo "Wild fish health is $bad_health"
	
	#Here for pazzaz
	echo " "
	sleep 0.5

	#Fish wrecklessly attacking you
	echo "OUCH the fish slapped you"
	my_health=$((my_health-10))


	#Here for pazzaz
	echo " "
	sleep 0.5

	echo "You took 10hp, you have $my_health hp"

	#Display attack to do
	sleep 0.67

	echo "punch fish?(Y)"
	echo "don't punch fish.(N)"


	if [[ $my_health -eq 0 ]];
	then
	       echo "FISH has totally obliterated you."
	       ((game_end++))
	fi	       

	#CHECK IF FISH IS ABOUT TO DIE BEFORE NEXT ATTACK	
	#IF fish was hurt twice already(2hp)
		
	if [[ $bad_health -eq 2 ]];
	then
		echo "You can still befriend this fish."
		echo "Give the fish a chance..???(Y/N)"

		read answerz
		
		#Player chose to spare the fish
		if [[ $answerz=='Y' || $answerz=='y' ]]
		then
			echo "The fish of an unknown name swims off to the sunset alone. It doesn't even look back. It did not wish to befriend you."
			#Told this to gemini and this is the idea it gave me for incrementing
			((game_end++))
			break
		

		#Player chose to not spare the fish
		elif [[ $answerz=='N' || $answerz=='n' ]]
		then

			echo "Fish did not give you a chance. Fish whistles and calls its fishy friends. A shadow the size of a whale looms under your boat."
			echo "$name took -1000hp."
			echo "$name was destroyed by mysterious fish."
			echo "Game over."
			((game_end++))
			break
		fi
	
	fi


	#READ ANSWER OF INITIAL PUNCH FISH OR DONT
	
	read answer

	if [[ $answer=='Y' || $answer=='y' ]]
	then
		#CHECK if im at full health and a puncher
		if [[ $bad_health -eq 100 && $answer= ]]
		then
			bad_health=$((bad_health-49))
		
			echo "do you really wanna punch it? It just a fish."
			echo "fish now has $bad_health hp"
			
		
		
		elif [[ $bad_health -eq 51 ]];
		then
			echo "Fish pulls up his sleeves. It's ready to slap you again.  It wont back down. >:( "
			bad_health=$((bad_health-49))
		fi



	elif [[ $answer=='N' || $answer=='n' ]];
	then

		#Choosing to not punch + different messages

		if [[ $counter==0 ]];
	       	then
			echo "Fish flinches.(You didnt punch it)"
			echo "Counter is: $counter, incrementing..."
			((counter++))
			echo "Counter is: $counter"
			
			
		
		elif [[ $counter==1 ]]; then
			echo "(Fish raises eyebrow).You really don't wanna punch it.. you paci-fisht."
			((counter++))
				

		elif [[ $counter==2 ]]; then
			echo "Fish smiles and waves. It makes you pinky promise to never hurt a fish.EVER."
			echo "do YOU accept this pinky promise? PUNCH or accept?(Y/N)"
			read
			

			if [[ $answer=='Y' || $answer=='y' ]]; then
				echo "Fish says do you wanna hang out. You hold nands and swim together.The fish tells you its name, its Anita a name that means grace. You watch the sunset. Gameover.. did you win...?"
				((game_end++))
			fi

			if [[ $answer=='N' || $answer='n' ]]; then
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
