#! /bin/bash
name=$1

echo "You are fisherman named $name"
echo "Knock the health out of that FISH!"

my_health=100
bad_health=100
counter=0
bad_counter=0

while [ $my_health -ne 0 ]
do
	
	#Display after every other turn
	echo "Your health is $my_health"
	echo "Wild fish health is $bad_health"
	
	#Fish wrecklessly attacking you
	echo "OUCH the fish slapped you"
	my_health -=10
	echo "You took 10hp, you have $my_health hp"

	#Display attack to do
	echo "punch fish?(Y)"
	echo "don't punch fish.(N)"

	read answer

	while answer=Y || answer=N:

	if answer=Y
	then
		bad_health -=49
		
		echo "do you really wanna punch it? It just a fish."
		echo "fish now has $bad_health hp"

#fish 4 turns to kill to me
#If I DONT punch fish counter goes up by one.
#human does 49 damage ( 3 punches to kill)

	if answer=N; then
		echo "Fish flinches.(You didnt punch it)"
	elif answer=N && counter=1; then
		echo "(Fish raises eyebrow).You really don't wanna punch it.. you paci-fisht."
	elif answer=N && counter=2; then
		echo "Fish smiles and waves. It makes you pinky promise to never hurt a fish.EVER."
		echo "do YOU accept this pinky promise? PUNCH or accept?(Y/N)"
		read answer

		if answer=Y; then
			echo "Fish says do you wanna hang out. You hold nands and swim together.The fish tells you its name, its Anita a name that means grace. You watch the sunset. Gameover.. did you win...?"
			break
		fi

		if answer=N; then
			echo "fish grabs your fist and throws you to the side. GAME OVER."
			break
		fi

	else
		echo "enter Y/N dude(plz restart script probs :] )"
	fi

	#IF fish was hurt twice already(2hp)
	if bad_health=2;
	then
		echo "You can still befriend this fish."
		echo "Give the fish a chance..???(Y/N)"
		read answerz
		if $answerz=Y
		then
			echo"The fish of an unknown name swims off to the sunset alone. It doesn't even look back. It did not wish to befriend you."
		fi
		if $answerz=N
		then

			echo "Fish did not give you a chance. Fish whistles and calls its fishy friends. A shadow the size of a while looms under your boat."
			echo "$name took -1000hp."
			echo "$name was destroyed by mysterious fish."
			echo "Game over."
			break
		fi	
	fi

done
#(While loops done here)

##If do punch fish
#fish 4 turns to kill to me
#If I DONT punch fish counter goes up by one.
#human does 49 damage ( 3 punches to kill)
