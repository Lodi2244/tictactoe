# TIC TAC TOE

*a tictactoe terminal game for 2 players*

This is a tictactoe game on your terminal.
They objective was to

## How to use it

1. Clone this repo
1. `$ ruby tictactoe.rb`


## How it works ?

One file by class (check tictactoe directory)

A tictactoe is a game for 2 players, witch put their signs on a board
The board is a 3x3 square , each square called a cell can have 3 values: nill or the signs of players. The winner is the player who
puts a consecutive combinaison of 3 signs. Each turn, players switch
and if there is no winner when grid is full, then game stop as a tie.

4 classes to resume this intro :
  1. Game
   - Manage moves
   - Switch players
   - Play a game
   - Check if a game over
   - Some display
  2. Boarcase
   - Contain a value witch can be modify
  3. Player
   -  Player as a name and a sign
  4. Board
   - Init a default_grid
   - Check if game is win or draw
   - Change boardcases' value
