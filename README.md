# Battle Game (Totally not a Pokemon rip off! Honest!)

This project was started in week 3 as part of the "Intro to web" afternoon challenges.
The task is to create a battle game using the user stories below.

### Progress

Step 1 - Creating files and installing rspec and Sinatra.
At this step we were building the initial file structure of our app and installing key gems required for the project.

Step 2 - Installing Capybara and running our first Rspec test.
Here we installed capybara and connected capybara to our rspec helper files allowing us to access the capybara functions for rspec.
We then wrote our first test through rspec to test that the capybara tests were working and the connection between our capybara gem and our rspec gems were working together.

Step 3 - Enabling the use of forms for players to enter their names.
Our next step was to write a test for our form to accept the name of our players names. As I was working in a three at the time, I created 3 players in the form and tests and outputted 3 players. We wrote our tests first and then worked through the code adding in the links to the input page where 3 input forms were created and then a second 'names' page where the names were outputted.

Step 4 - We use the sessions function to save our form submissions and then redirect those saved inputs to the /play page to carry over the saved names.

Step 5 - To keep our code clean we then created a new file within our features spec page called web_helpers. This allowed us to refactor our code down to a single line in our testing framework. I also implemented tests that test both players HPs.

Step 6 - Created a new attack button test that tests for the interaction of an attack button. This attack button then redirects to a new attack button page which was also created to hold the attack confirmation.

Test coverage so far = 100%


### Challenge setup

Here are the complete User Stories for this project. They begin with some 'Basic' User Stories:

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

And some Advanced 'extension' User Stories:

```
As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a lonely Player,
So I can keep my Battle skills up to scratch
I want to play a Computerised opponent

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can better enjoy a game of Battle,
I want some of my attacks to Paralyse an opponent (chance of losing their next attack)

As a Player,
So I can better enjoy a game of Battle,
I want one of my attacks to have a chance of Poisoning my Opponent (Opponent takes a small random amount of damage at the beginning of their turn)

As a Player,
So I can better enjoy a game of Battle,
I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points

As a Player,
So I can enjoy my game of Battle,
I want a sexy user interface