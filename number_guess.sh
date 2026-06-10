#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

USER_INFO=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME';")

if [[ -z $USER_INFO ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
else
  echo "$USER_INFO" | while IFS="|" read GAMES_PLAYED BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

echo "Guess the secret number between 1 and 1000:"
GUESS_COUNT=0

while true
do
  read USER_GUESS
  
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi
  
  ((GUESS_COUNT++))
  
  if [[ $USER_GUESS -eq $SECRET_NUMBER ]]
  then
    break
  elif [[ $USER_GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done

echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"

CURRENT_STATS=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME';")
echo "$CURRENT_STATS" | while IFS="|" read GAMES_PLAYED BEST_GAME
do
  NEW_GAMES_PLAYED=$(( GAMES_PLAYED + 1 ))
  
  if [[ -z $BEST_GAME || $GUESS_COUNT -lt $BEST_GAME ]]
  then
    UPDATE_RESULT=$($PSQL "UPDATE users SET games_played=$NEW_GAMES_PLAYED, best_game=$GUESS_COUNT WHERE username='$USERNAME';")
  else
    UPDATE_RESULT=$($PSQL "UPDATE users SET games_played=$NEW_GAMES_PLAYED WHERE username='$USERNAME';")
  fi
done
