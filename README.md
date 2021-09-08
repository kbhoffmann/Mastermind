# Mastermind

Mastermind is a game that runs in a REPL interface.
This game requires the colorize gem.  Install the colorize gem by running in your terminal the command:

```ruby
gem install colorize
```
To clone the application from GitHub in order to run:
```ruby
git clone git@github.com:kbhoffmann/Mastermind.git
```
To start playing the game, in your terminal run:
```ruby
ruby mastermind.rb
```

Mastermind is built with Ruby 2.7.2 and RSpec version 3.10.


Tests may be run by typing in your terminal:
```ruby
rspec spec/filename_spec.rb
```
-Tests are organized by the first file as the spec/game_spec.rb file which gives welcomes the player and invites them to play "Mastermind."  The player may choose to play, get instructions, or quit.  

-The second file, spec/secret_spec.rb, tests the random generation of the computer code, which is an array of 4 colors.

-The next test file is spec/guess_spec.rb which tests the input of the player as as a single string of 4 lower case letters corresponding to colors.  It tests to make sure the guess is the appropriate length of 4.  If length is greater than or less than 4, the player will be informed of the error and instructed to guess again. The player may also select to quit, get instructions, or cheat and get the secret answer.

-The last test, the feedback_spec test file compares the player's guess to the computer's secret and gives the player feedback as to the accuracy of their guess, as well as how many guesses they have taken.  If the player wins, it tells the player how long it took them to guess the correct answer and in how many guesses.

This project was the first paired project in our Turing program.  We faced challenges of defining our roles within the project, planning how to divide and conquer so we may code in an asynchronous manner, as well as working together in a driver/navigator approach.  Learning how to work together proved to be challenging, yet rewarding.  As partners, we both had different thought processes and may have had different ways to solve problems.  Having two heads can definitely be better than one.  Sometimes one of us saw something the other didn't and one of us may have been stronger in one area than another. Learning to set expectations for time and work as well as using clear communication helped us be successful in creating our first functioning game. Those things will also be valuable in future projects with different partners.

Authors [Billy Frey](https://github.com/bfrey08)
and [Kerri Hoffmann](https://github.com/kbhoffmann)
