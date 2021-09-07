require 'colorize'

class Game
  def initialize
    @colors = ["blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red"]
    @secret = Secret.new(@colors)
  end

  def play
    $time_start = Time.new.round(2)
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
    elsif guess.too_long?
      feedback = Feedback.new(@secret, guess)
      puts "Guess is too long, it must be 4 letters long. Try again."
    elsif guess.too_short?
      feedback = Feedback.new(@secret, guess)
      puts "Guess is too short, it must be 4 letters long. Try again."
    end

    until feedback.is_win? || guess.is_cheat? || guess.is_quit?

      user_input = gets.chomp
      guess = Guess.new(user_input)
      if guess.check_length? && !guess.is_quit?
        feedback = Feedback.new(@secret, guess)
        feedback.print_feedback

      elsif guess.is_quit?
        self.quit
      elsif guess.is_instructions?
        self.instructions
      elsif guess.is_cheat?
        self.cheat
      elsif guess.too_long?
        feedback = Feedback.new(@secret, guess)
        puts "Guess is too long, it must be 4 letters long. Try again."
      elsif guess.too_short?
        feedback = Feedback.new(@secret, guess)
        puts "Guess is too short, it must be 4 letters long. Try again."
      end
    end
  end

  def cheat
    puts @secret.colors_4
  end

  def instructions
    y = "y(ellow)"
    g = "g(reen)"
    b = "b(lue)"
    r = "r(ed)"
    p "The computer will randomly generate a combination of 4 colors, consisting of a combination that may include #{y}, #{g}, #{r}, and #{b}.  Not all of the colors may be included in the secret combination.  There may be duplicates of some color.  If your guess is incorrect, you will be told how many colors are correct and how many colors are also in the correct position.  You may quit at any time by entering q(uit) or cheat and access the secret by entering (c)heat Good luck!"
  end

  def quit
    puts "Thank you for checking out Mastermind!  Goodbye"
    exit!
  end
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
