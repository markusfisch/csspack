#!/bin/bash

D=`cat`

# remove comments
while [[ $D == */\** ]]
do
	D=${D%%/\**}${D#*\*/}
done

# remove line breaks and tabs
D=${D//[$'\n'$'\r'$'\t']/}

# compress blanks and tabs
D=`echo $D`

# remove unnecessary blanks
D=${D//: /:}
D=${D//( /(}
D=${D// )/)}
D=${D//, /,}

echo "$D"
