# Battle App
Terminal App assignment from coder academy. 
(https://github.com/Jese310S/battle_app)




### Current User Story
Battle App is a RPG style game. After starting the app in the terminal, the user is prompted to create a username and then the game begins.

![](./docs/welcome.gif)

The player chooses their champion for battle.

![](./docs/choose_champ.gif)

 Next the user encounters the games boss. 

![](./docs/hit.gif)

 Once ready the boss and player take turns attacking. 

 ![](./docs/hit.gif)

 First to zero health wins the day.
 
 ![](./docs/Win_screen.gif)

### Original User Story
The Original idea for the game was to have the user choose a level they would like to play and that would increase the difficulty.  the user would then choose their army instead of a champion.  The choice of army would determine the useres attack level.  I quickly realised that these features although nice were not necessary for the moment and were going to stop me from producing a quality outcome fo the project withing the week.  I then decided to change the user story wich allowed me to focus on producing a working app.  These features were added to the future features list.

### Features


| Feature | Description | Expected Outcome | Actual Outcome | Is it a poroblem? |
| ------ | ------ | ------- | ------ | ------ |
| Welcome Screen | displays game logo and asks the user if the are ready to play | The title of the game in a stylised font and yes/no prompt | As Expected | No
| Username screen  | user will enter name | prompt user for username and add to player name in player class | As Expected | No
| Champion Table | Table that lists and describes champions  | A table with rows and columns containing champions and their description | As Expected | No
| Select Champion | User is given option to choose their champion | user is pormpted to choose a champion and chanmpion is stored in army class | As Expected | No
|  Display Opponent | Boss screen with name and stats | a stylised boss name and table with stats are printed to the screen, user is prompted to start | As Expected | No
| Attack Sequence | player and boss take turns attacking each other | user is individually prompted to attack and if they are ready for boss attack | As Expected
| Random Hit/Miss | A hit or a miss from user or boss is random | the hit or miss function will produce random outcomes | As Expected | No
| Attack Result | the result of the attack is displayed on screen | Hit or Miss is printed to screen and a progess bar with remaining health is shown | As Expected | No
| Hit or Miss Phrases | a comment about the player and boss's attack is printed  | comments are chosen randomly from array | As Expected | No
| Win/Lose Screen | Display Win/Lose base on which character reaches zero health first | Stylised Win or Lose prints to screen when health is zero | As Expected | No
| Restart Game | at the end of game, player can restart | player is prompted to restart and if yes game is restarted | As Expected | No

### User Flow 
![](./docs/user_flow.png)
### Game Screens

![](./docs/welcome.gif)
![](./docs/hit.gif)
![](./docs/choose_champ.gif)
![](./docs/Win_screen.gif)












 



