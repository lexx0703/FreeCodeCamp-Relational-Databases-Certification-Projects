#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Очистка таблиц перед вставкой
echo "$($PSQL "TRUNCATE teams, games")"

# Чтение файла, пропуская заголовок
cat games.csv | tail -n +2 | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do
  # Добавление уникальных команд в таблицу teams
  for TEAM in "$WINNER" "$OPPONENT"
  do
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$TEAM'")
    if [[ -z $TEAM_ID ]]
    then
      $PSQL "INSERT INTO teams(name) VALUES('$TEAM')"
    fi
  done

  # Получение ID для связи
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  # Вставка игры в таблицу games
  $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $W_GOALS, $O_GOALS)"
done
