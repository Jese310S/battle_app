# Battle App

(https://github.com/Jese310S/battle_app)

# Software Development Plan

## Game Motivation and Description

This Terminal App was an assignment for Coder Academy.  For the assignment the first thing that came to mind was a game.  I knew I would enjoy creating the visual style of a terminal while practice utilising classes in ruby.  I took inspiration from a couple of games, the first being diablo and the second is clash of clans.  I liked the idea of a fighting game with a midevil theme.

Battle App is an RPG inspired turn based attack style game.  After opening the terminal and starting the app the player will be asked to provide their username.  Once they are ready to play the player will choose a champion to battle with.  Next the user encounters the game's boss.  Once ready the boss and player will take turns in attacking. The winner is determined based on hit points (HP) and whomever is left standing after their opponent has 0HP wins.  

In the game the user is able to choose a champion, battle their enemy, Start New Game, or Exit

My target audience is anyone with access to a terminal.  The app is meant to bring some enjoyment.  I want the user to be able to stop what they are working on and take a mental break.  Many times all that is needed is a battle with a dragon to reenergise and finish the project.

## Purpose and Scope

My target audience is anyone with access to a terminal.  The app is meant to bring some enjoyment.  I want the user to be able to stop what they are working on and take a mental break.  Many times all that is needed is a battle with a dragon to reenergise and finish the project.

The Original idea for the game was to have the user choose a level they would like to play and that would increase the difficulty.  The user would then choose their army instead of a champion.  The choice of army would determine the useres attack level.  I quickly realised that these features, although nice were out of my scope for the moment and were going to stop me from producing a quality outcome withing the week.  I then decided to change the user interactions without affecting the story. This allowed me to focus on producing a working app.  These features were added to the future features list.




## Current Features


| Feature | Description | User Experience |
| ------ | ------ | ------- | ------ |
| Username screen  | User will enter a chosen name to be used in the game | Prompt user for username
| Welcome Screen | Displays game logo and asks the user if they are ready to play | The title of the game in a stylised font prints to the screen with a description of the game. A yes/no prompt asks if they are ready to begin 
| Select Champion | User is given options and then chooses their champion | A table prints to screen with a description of the champions. User is then  prompted to select their champion.
| Attack Sequence | Player and boss take turns attacking each other | User is individually prompted to prepare for attack and to attack with each turn. A message and progress bar appear after each.  The message describes the result of the attack and the progress bar show the remaining HP percentage. 
| Win/Lose Screen | Display Win/Lose based on which character reaches zero health first | A Stylised Win or Lose screen prints to screen.
| Restart Game | At the end of the game, the user can restart or exit. | The user is prompted and asked if they would like to restart or exit and if yes game is restarted and they enter a new username.


## Game Screens

![](./docs/gifs/welcome_screen.gif)
![](./docs/gifs/hit.gif)
![](./docs/gifs/choose_champ.gif)
![](./docs/gifs/Win_screen.gif)


## User Flow
![](./docs/gifs/flow_chart.png)


## Project Management

I used Trello to organise and keep track of what I was working on. Trello helped me visualise what still needed to be completed by my set timeline.


![](./docs/trello/trello_1.png)
![](./docs/trello/trello_4.png)
![](./docs/trello/trello_7.png)


## Getting Started

### Instructions for Installation and Use

1. You will need ruby installed on your computer. [Download Ruby Here](https://www.ruby-lang.org/en/).
2. You will also need the Bundler gem installed. It comes with the main ruby installation, but if you do not have it on your machine, you can install it with the following command:

`gem install bundler`

3. Fork or clone this repository down to your local computer [Clone App Here](https://github.com/Jese310S/battle_app.git).

4. Navigate into the repository.

`cd battle_app`

5. To finish install and start game and use the command:

`bash run.sh`

6. Enter your chosen username and enjoy the game.


## Running the Tests

From `/src` folder in repository on your computer, use the command:

`ruby tests.rb`


















