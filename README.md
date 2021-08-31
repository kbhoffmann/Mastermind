# Mastermind
Game class, Feedback class, Guess class, Secret class, Element class

Game class
*instructions(i)
*play(p) -- Feedback class, Secret class, Element class
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

Guess class
*user input parameter
*correct guess method? win?
*is proper guess?
*number of guesses (or put this in Game class)
*(q)uit
*(c)heat

Element class
*parameter sting of color ("r","y","g","b")
*shorten color element to single  
