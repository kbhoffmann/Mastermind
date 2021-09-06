class Game
  def initialize
  end

  # def cheat
  #   # if user_input == 'c' || user_input == 'cheat'
  #     puts secret_2.shortened
  #
  # end

  puts "What is your first guess?"
  guess = $stdin.gets.chomp
  #starts tracking time when user enters first guess

  def start_time
    Time.new.round(2)
  end

  #stops tracking time when user wins
  #added 1 to make sure time_elapsed method worked
  def end_time
    Time.new.round(2)
  end

  #calculates total time user took to guess secret, prints with winning message
  def time_elapsed
    end_time - start_time
  end


  if guess == 'q' || guess == 'quit'
    puts "Thank you for checking out Mastermind!  Goodbye"
    exit!
  end

  if guess.length == 4
    #enter comparison/feedback mode

  elsif guess.length < 4
    puts "Guess is too short, it must be 4 letters long. Try again."
    puts '<'
      $stdin.gets.chomp

  elsif guess.length > 4
    puts "Guess is too long, it must be 4 letters long. Try again."
    puts '<'
      $stdin.gets.chomp
  end

end
