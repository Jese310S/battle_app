# Battle App
This Terminal App was an assignment for Coder Academy. Battle App is an RPG inspired turn based attack style game.  After opening the terminal and starting the app the player will be asked to provide their username.  Once they are ready to play the player will choose a champion to battle with.  Next the user encounters the game's boss.  Once ready the boss and player will take turns in attacking. The winner is determined based on hit points (HP) and whomever is left standing after their opponent has 0HP wins.

(https://github.com/Jese310S/battle_app)

## Purpose and Target Audience
This app is meant to bring some enjoyment to anyone with access to a terminal.

## Getting Started

### Instructions for Installation and Use

1. You will need ruby installed on your computer. [Download Ruby Here](https://www.ruby-lang.org/en/).
2. You will also need the Bundler gem installed. It comes with the main ruby installation, but if you do not have it on your machine, you can install it with the following command:

`gem install bundler`

3. Fork or clone this repository down to your local computer [Clone App Here](https://github.com/Jese310S/battle_app.git).
4. To install the gem(s) required, navigate to the location of the `/src` folder in repostitory on your computer, and use the command:

`bundle`

5. Run the app with:

`ruby main.rb`

## Running the Tests

From `/src` folder in repository on your computer, use the command:

`ruby tests.rb`



## Original App Idea

The original idea for the game was to have the user choose a level they would like to play and that would determine the difficulty.  The user would then choose their army, instead of a champion.  The choice of army would determine the users attack strength.  I quickly realised that these features, although nice were not necessary for the app to be a battle. I decided instead of focusing on packing in as manu features as possible I would remove them. Keeping them would have stopped me from producing a quality outcome by the end of the week.  I then decided to change the user story wich allowed me to focus on producing a working app.  These features were added to the future features list for app upgrade later on.

## Game Screens

![](./docs/gifs/welcome_screen.gif)
![](./docs/gifs/hit.gif)
![](./docs/gifs/choose_champ.gif)
![](./docs/gifs/Win_screen.gif)


## Current Features


| Feature | Description | Expected Outcome | Actual Outcome |
| ------ | ------ | ------- | ------ |
| Welcome Screen | displays game logo and asks the user if they are ready to play | The title of the game in a stylised font and a yes/no prompt | As expected
| Username screen  | user will enter name | prompt user for username and add to player name in player class | As expected
| Champion Table | Table that lists and describes champions  | A table with rows and columns containing the games champions and their description | As expected
| Select Champion | User is given option to choose their champion | user is pormpted to choose a champion and chanmpion is stored in army class | As expected
|  Display Opponent | Boss screen with name and stats | a stylised boss name and table with stats are printed to the screen, user is prompted to start | As expected
| Attack Sequence | player and boss take turns attacking each other | user is individually prompted to attack each turn and if they are ready for boss attack(s) | As expected
| Random Hit/Miss | A hit or a miss from user or boss is random | the hit or miss function will produce random outcomes and pass it to the attack method | As expected
| Attack Result | the result of the attack is displayed on screen | Hit or Miss is printed to screen and a progess bar with remaining health is shown | As expected
| Hit or Miss Phrases | a comment about the player and boss's attack is printed  | comments are chosen randomly from array | As expected
| Win/Lose Screen | Display Win/Lose base on which character reaches zero health first | Stylised Win or Lose prints to screen when health is zero | As expected
| Restart Game | at the end of game, player can restart | player is prompted to restart and if yes game is restarted | As expected

## User Flow 
![](./docs/gifs/graph.png)


## Project Management

I used Trello to organise and keep track of what I was working on. Trello helped me visualise what still needed to be completed by my set timeline.


![](./docs/trello/trello_1.png)
![](./docs/trello/trello_4.png)
![](./docs/trello/trello_7.png)


















