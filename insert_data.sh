#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")

#cat print the contents of a file
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNDER_GOALS OPPONENT_GOALS

do 
    if [[ $YEAR != "year" ]] #get rid off the first line
    then

    #for teams table
    #get name
        GET_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
        #if name is missing
      if [[ -z $GET_NAME ]]
      then
        INSERT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      #insert name
       if [[ $INSERT_NAME == "INSERT O 1" ]] #if name already exist
       then
          echo INSERTED NAME: $WINNER
       fi
       GET_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
      #get new name
      fi
      
      if [[ $GET_NAME != $OPPONENT ]]  #insert opponent name
      then
        INSERT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        if [[ $INSERT_NAME == "INSERT O 1" ]] #if name already exist
        then
          echo INSERTED NAME: $OPPONENT
        fi
       GET_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")

      fi

      #for games table
      #get _id
      GET_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      GET_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      if [[ -n $GET_WINNER_ID || -n $GET_OPPONENT_ID ]]
      then
      INSERT_INFO=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id,winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $GET_WINNER_ID, $GET_OPPONENT_ID, $WINNDER_GOALS, $OPPONENT_GOALS)")
        if [[ INSERT_INFO == "INSERT 0 1" ]]
        then
        echo INSERTED $YEAR $ROUND $GET_WINNER_ID $GET_OPPONENT_ID $WINNDER_GOALS $OPPONENT_GOALS
        fi
      fi






    fi

done
