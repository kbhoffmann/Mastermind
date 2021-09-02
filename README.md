# Mastermind
Game class, Feedback class, Guess class, Secret class

Game class
---------------
*start and end method
*instructions(i)
*play(p) -- Feedback class, Secret class. Guess class
*quit(q)
*time tracking

Secret class
*holds computer generated sequence
*method- randomize elements- use array.shuffle
*array of elements is the parameter
*r, g ,y, b as strings
*array = ["r","r","r","r","g","g","g","g","y","y","y","y","b","b","b","b"]

Feedback class
*2 parameters - guess- string of colors and secret is the array of colors
*evaluate if guess is proper format- 4
*compare guess to secret using order  ->if order AND color correct
*compare guess to secret without order ->returns if color correct
*print proper feedback as a string/ our responses
*number of guesses (or put this in Game class) -- number counter (instance variable)
*combine w/ Guess class?

Guess class
*user input parameter
*correct guess method? win?
*is proper guess?
*(q)uit
*(c)heat   - print the secret as a string
*if secret is guessed - end the game, print a winning comment

Runner file --->input = gets.chomp q,i,c,p

if (p)lay =  guess = string of 4 colors
capitalize for feedback at some point?????
put guess string into array
compare to secret array
check player's guess for length
string.length   <4 too short; >4 too long, == 4  play...go to feedback/comparison
