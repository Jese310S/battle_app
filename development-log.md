# Development Log


## Day 1: April 20, 2020

Today I started the documentation for the app.  I began with Trello.  I took each section of the rhuberic and made it into a card in trello with a checklist.  Breaking up the rhuberic this way was very helpful.  I then began on my features chart.  The chart will outline each feature and what I expect the result to be.  Then with testing I will make sure the outcome is correct and log that into the chart.  Towards the end of the day I found an online tool to design my user flow chart and began creating that.


## Day 2: April 21, 2020

I finished my user flow chart.  The design tool Lucidchart was very useful and made the chart look nice.  I then started to write some tests and begin my first class which was the player class.  writing tests first was an adjustment but I got the hang of it.  In writing the test first I was able to build the class to do exactly what I expected.  I ended the day with my army and boss classes done.  I started to white board the idea of the attack class.


## Day 3: April 22, 2020

Today was challenging. I first started to add gems that I thought would be useful. I came across an error that I could not figure out.  It was an unitialized constant error.  I thought there must have been a spelling error somewhere, but no.  I realised that the error was because I had required_relative a file that was not being used.  That began the days lesson in inheritance.  My app's inheritance was getting complicated.  I decided to draw this out and understand it better.  I then worked on the turn based attack sequence.  I knew it should be a loop but when I made the loop the first time both the player and the boss either hit or miss at the same time.  I needed to seperate the player and dragon.  an if else statement evaluating whether a variable was even or odd allowed for this.  I felt like I was on track. 

## Day 4: April 23, 2020

I started working on utilizing my gems.  The TTY gems were extreemly useful.  I quickly made use of prompt, font and pastel to make the app feel a bit more like a video game.  Propmt was extreemly useful because it has built in error handling.  I also used Terminal- Table and TTY- progressbar.  I also spent the day writing a few more tests for the army class.  I want the user to pick their champion and make sure that champion is stored.  I then want to call the champions remining heatlh after their attack.

## Day 5: April 24, 2020

Today the app is looking more like a game.  The battle sequence is working and the hp is depleting and showing after each turn.  I also added messages to appear that ouline the result of the attack.  I tried to make them clever, not sure if they are.  The issue that needs fixing today is that even when the player or the boss wins the game the dead character still has a turn.  So even in death they are attacking. My fix for this was a wins method.  This would check with each turn if the player or boss won, this would help me exit the loop.  The win method also checks once outside the loop to help print the win or lose screen to the terminal.

## Day 6: April 26, 2020

The app finally works from start to finish.  I spent the first part day adding style to the app and getting things to look and feel like a game.  I then cleaned up the code and while I was doing that I realised I had not been using inheritance in its most efficient form.  At least I think I wasnt.  I was initiating attack and passing thing in when in reality player and boss were inheriting from attack.  I dont know why i didnt see this earlier but I changed the code and added comments.  I then realise I needed to adjust the tests I had written.  So I spent time doing that.  at the end of the day the app was running the way I wanted and they style was there.  Although it was long, It felt like a good day.

## Day 7: April 27, 2020

I spent the day finalising my documentation and making my powerpoint slides.  I could have probably done more documentation the first day.  It is tempting to get right into coding.  All in all I am happy with the App.  There were challenges, but in the end I really did learn a lot.   