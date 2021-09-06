require 'colorize'
# require 'pry'
# require './lib/guess'
# require './lib/secret'
# require './lib/game'

welcome_message = "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"

y = "y(ellow)".yellow
g = "g(reen)".green
b = "b(lue)".blue
r = "r(ed)".red

yellow = "Yellow".yellow
green = "Green".green
blue = "Blue".blue
red = "Red".red

instructions = "The computer will randomly generate a combination of 4 colors, consisting of a combination that may include #{y}, #{g}, #{r}, and #{b}.  Not all of the colors may be included in the secret combination.  There may be duplicates of some color.  If your guess is incorrect, you will be told how many colors are correct and how many colors are also in the correct position.  You may quit at any time by entering q(uit) or cheat and access the secret by entering (c)heat Good luck!"

play = "The computer has created a secret combination of a series of 4 colors using #{red}, #{green}, #{yellow}, and #{blue}.  Not all colors may be used as some colors may be duplicated in the secret.  What is your 4 color guess?  Type #{r}, #{g}, #{y}, and #{b}."

puts welcome_message
user_input = $stdin.gets.chomp

if user_input == 'p' || user_input == 'play'

  puts play

    game = Game.new
    game.play

elsif user_input == 'q' || user_input == 'quit'

  puts "Thank you for checking out Mastermind!  Goodbye"
  exit!

elsif user_input == 'i' || user_input == 'instructions'

  puts instructions
  puts "Would you like to contintinue to p(lay) or q(uit)?"

  user_input = $stdin.gets.chomp

  if user_input == 'p' || user_input == 'play'

    puts play

    game = Game.new
    game.play

  elsif user_input == 'q' || user_input == 'quit'

    puts "Thank you for checking out Mastermind!  Goodbye"
    exit!

  end

elsif user_input == 'c' || user_input == 'cheat'
  puts computer_secret

end
