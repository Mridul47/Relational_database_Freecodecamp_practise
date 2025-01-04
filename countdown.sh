#!/bin/bash 
# Program that counts down to zero from a given argument
# if [[ $1 == arg1 ]]
# then
#   echo true
# else
#   echo false
# fi  #this is how we use if else statement in bash

# if [[ $1 -gt 0 ]] gt is greater than
# then
#   echo true
# else
#   echo Include a positive integer as the first argument.
# fi 

#echo $1 #prints the first argument. for eg in terminal if we write ./countdown.sh arg1 arg2 arg3 it prints arg1 as its in 1st position
echo -e "\n~~ Countdown Timer ~~\n"
: '
for (( i = $1; i >= 0; i-- ))
do
  echo $i
  sleep 1
done
'
I=$1

while [[ $I -ge 0 ]]
do
  echo $I
  (( I-- ))
  sleep 1
done
#chmod +x countdown.sh #=> This is used to give my file executable permission at the bash
#echo $* => This is used to access a program argumentswith $*


