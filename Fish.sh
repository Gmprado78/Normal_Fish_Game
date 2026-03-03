#! /bin/bash
name=$1

echo "You are fisherman named $name"
echo "Knock the health out of that FISH!"

my_health=100
bad_health=100
counter=0

while [ $my_health -ne 0 ]
do
	
	#Display after every other turn
	echo "Your health is $my_health"
	echo "Wild fish health is $bad_health"
	

	#Display attack to do
	echo "punch fish?(Y)"
	echo "don't punch fish.(N)"
	read answer
	while answer = Y or N:

	if answer=Y
	then
		bad_health -=49
		
		echo "do you really wanna punch it? It just a fish."
		echo "fish now has $bad_health hp"

	if answer=N
		echo "Fish flinches.(You didnt punch it)"
	elif answer= N $$ counter=1
		echo "(Fish raises eyebrow).You really don't wanna punch it.. you paci-fisht."
	elif answer=N && counter=2
		echo "Fish smiles and waves. It makes you pinky promise to never hurt a fish.EVER."
		echo "do YOU accept this pinky promise? PUNCH or accept?(Y/N)"
		read answer
		if answer=Y:
			echo "Fish says do you wanna hang out. You hold nands and swim together.The fish tells you its name, its Anita a name that means grace. You watch the sunset. Gameover.. did you win...?"
			break
		if answer=N	

	else
		echo "enter Y/N dude(plz restart script probs :] )"
	fi

	#IF fish was hurt twice already(2hp)
	if [ $bad_health=2 ]
		echo "

			

	fi

done

#Display when attacked 
echo "Ouch that fish Slapped me!"
#Something that shows fish depleted health

echo "health depleted __ points"


## IF do not punch fish scenarios
# DO YOU ACCEPT? PUNCH OR accept?(Y/N)

# if DO punch after yes, fish grabs your fist and throws you to the side. GAME OVER.
# if you accept. Fish says do you wanna hang out. You hold nands and swim together.The fish tells you its name, its Anita a name means Grace. GAME OVER.


##If do punch fish
#fish 4 turns to kill to me
#If I DONT punch fish counter goes up by one.
#human does 49 damage ( 3 punches to kill)


#Game over scene.
#Did you win..??

