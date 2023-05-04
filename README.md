## description
a 2-player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game outputs the new scores for both players, so players know where they stand.

## Tasks
1. Extract Nouns for Classes
2. Write out the roles for each class
3. Write out methods for each class

## Nouns for Classes
- Game
- Player
- Question

## Roles for each class
- Game
  - start
  - end
  - current_player
  - game_over?
  - summary
- Player
  - name
  - lives
  - lose_life
  - summary
- Question
  - generate_question
  - check_answer

## Methods for each class
- Game
  - start
    - create 2 players
    - create a new turn
    - start the turn
  - end
    - end the game
  - current_player
    - return the current player
  - game_over?
    - return true if any player's lives is 0
  - summary
    - print out the summary of the game
- Player
  - name
    - return the name of the player
  - lose_life
    - decrease the number of lives by 1
  - summary
    - print out the summary of the player
- Question
  - generate_question
    - generate a new question
  - check_answer
    - check if the answer is correct
- Turn
  - start
    - start the turn
  - end
    - end the turn


