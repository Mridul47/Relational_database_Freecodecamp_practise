#!/bin/bash
echo -e "\n~~ Questionnaire ~~\n" #To make it appear as a title we using the double quotation and n and e for the line breaking
QUESTION1="What's your name?" #storing a variable in bash
QUESTION2="Where are you from?"
QUESTION3="What's your favorite coding website?"
echo $QUESTION1; #print method in bash
read NAME #we use read to accept value from user
echo $QUESTION2
read LOCATION
echo $QUESTION3
read WEBSITE
echo Hello $NAME. #this is used while printing the value given by user
echo -e "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"

#Another way to find information about a command is with man. 
#It stands for manual and you can use it like this: man <command>. 
#See if there's a manual for echo.