# Math Game plan

## Classes

> game

    ⚝ Contains the game state, generates the questions and rotates the players
    ⚝ Tests the winning contidion
    ⚝ Asks the current player the current question each loop iteration
      ⚙ start new game
      ⚙ rotate the players
      ⚙ generate a new question
      ⚙ ask the question

> player

    ⚝ Contains id and score

> question

    ⚝ Contains the current question
      ⚙ decrement the score if the player is wrong
