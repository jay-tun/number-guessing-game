#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME

USERNAME_RESULT=$($PSQL "SELECT username FROM players WHERE username='$USERNAME'")

if [[ -z $USERNAME_RESULT ]]
then
      echo -e "Welcome, $USERNAME! It looks like this is your first time here."
      INSERT_USERNAME=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
else
      GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games LEFT JOIN players USING(user_id) WHERE username='$USERNAME'")
      INSERT_GAMES_PLAYED=$($PSQL "INSERT INTO players(games_played) VALUES($GAMES_PLAYED)")
      BEST_GAME=$($PSQL "SELECT MIN(best_game) FROM games LEFT JOIN players USING(user_id) WHERE username='$USERNAME'")
      echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

fi

SECRET_NUMBER=$((1 + $RANDOM % 1000))
GUESS_COUNT=0

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

until [[ $GUESS -eq $SECRET_NUMBER ]]
do
      # if input is not a number
      if [[ ! $GUESS =~ ^[0-9]+$ ]]
      then
            echo -e "\nThat is not an integer, guess again:"
            read GUESS
            ((GUESS_COUNT++))
            
      else
            # when input is greater than the secret num
            if [[ $GUESS > $SECRET_NUMBER ]]
            then
                  echo "It's lower than that, guess again:"
                  read GUESS
                  ((GUESS_COUNT++))
            # if it's lower
            else
                  echo "It's higher than that, guess again:"
                  read GUESS
                  ((GUESS_COUNT++))
            fi
      fi
done

((GUESS_COUNT++))

USER_ID_RESULT=$($PSQL "SELECT user_id FROM players WHERE username='$USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT into games (user_id, best_game, secret_number) VALUES ($USER_ID_RESULT, $GUESS_COUNT, $SECRET_NUMBER)")

echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
