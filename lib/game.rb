class Game
  def initialize
    @colors = ["blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red"]
    @secret = Secret.new(@colors)
  end

  # def cheat
  #   # if user_input == 'c' || user_input == 'cheat'
  #     puts secret_2.shortened
  #
  # end

  def play
    @secret.shuffle_4
    user_input = gets.chomp
    guess = Guess.new(user_input)
    if guess.check_length?
      feedback = Feedback.new(@secret, guess)
      feedback.print_feedback
    elsif guess.is_quit?
      self.quit
    elsif guess.is_instructions?
      self.instructions
    elsif guess.is_cheat?
      self.cheat
    else
    end

    until feedback.is_win? || guess.is_cheat? || guess.is_quit?

      user_input = gets.chomp
      guess = Guess.new(user_input)
      if guess.check_length?
        feedback = Feedback.new(@secret, guess)
        feedback.print_feedback

      elsif guess.is_quit?
        self.quit
      elsif guess.is_instructions?
        self.instructions
      elsif guess.is_cheat?
        self.cheat
      else
      end
    end

  end

  def cheat
    puts @secret.colors_4
  end

  def instructions
  end

  def quit
  end






  #
  # puts "What is your first guess?"
  # guess = gets.chomp
  # #starts tracking time when user enters first guess
  #
  # def start_time
  #   Time.new.round(2)
  # end
  #
  # #stops tracking time when user wins
  # #added 1 to make sure time_elapsed method worked
  # def end_time
  #   Time.new.round(2)
  # end
  #
  # #calculates total time user took to guess secret, prints with winning message
  # def time_elapsed
  #   end_time - start_time
  # end
  #
  #
  # if guess == 'q' || guess == 'quit'
  #   puts "Thank you for checking out Mastermind!  Goodbye"
  #   exit!
  # end
  #
  # if guess.length == 4
  #   #enter comparison/feedback mode
  #
  # elsif guess.length < 4
  #   puts "Guess is too short, it must be 4 letters long. Try again."
  #   puts '<'
  #     $stdin.gets.chomp
  #
  # elsif guess.length > 4
  #   puts "Guess is too long, it must be 4 letters long. Try again."
  #   puts '<'
  #     $stdin.gets.chomp
  # end

end
