#!/bin/bash

## This script needs to be run as root: 
## $ sudo /bin/bash install.sh

strfile math.fortunes
cp math.fortunes{,.dat} /usr/share/games/fortunes/
cp Sigma.cow /usr/share/cowsay/cows/

## Test the results: 
BASHRC=~/.bashrc
FORTUNE=/usr/games/fortune
COWSAY=/usr/games/cowsay

echo -e "\n\n" >> $BASHRC
echo "## Add a "mathy" fortune to your terminal on startup: " >> $BASHRC
echo -e "${FORTUNE} math.fortunes | ${COWSAY} -f Sigma\n" >> $BASHRC
$FORTUNE math.fortunes | $COWSAY -f Sigma
