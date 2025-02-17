#!/bin/bash
# Program to tell a person's fortune

echo -e "\n~~ Fortune Teller ~~\n"

# Array of possible responses
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

# Function definition
GET_FORTUNE() {
  if [[ ! $1 ]]; then
    echo "Ask a yes or no question:"
  else
    echo "Try again. Make sure it ends with a question mark:"
  fi
  read QUESTION
}

# Call the function initially without arguments
GET_FORTUNE

# Until the user provides a question ending with '?'
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done

# Print the random fortune response
echo -e "\n${RESPONSES[$N]}"
