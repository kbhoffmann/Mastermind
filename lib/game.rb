class Game
  def initialize
    @colors = ["blue", "green", "yellow", "red", "blue", "green",
      "yellow", "red", "blue", "green", "yellow", "red", "blue",
      "green", "yellow", "red", "blue", "green", "yellow", "red"]
    @secret = Secret.new(@colors)
    @guess = nil
    @feedback = nil

  end

  def play
    @secret = Secret.new(@colors)
    $time_start = Time.new.round(2)
    @guess = Guess.new(nil)
    $count = 0
    until @guess.is_quit?
      @secret.shuffle_4
      user_input = gets.chomp
      @guess = Guess.new(user_input)
      @feedback = Feedback.new(@secret, @guess)
      self.game_flow
    end
  end

  def cheat
    p @secret.shortened.join.upcase
  end

  def instructions
    y = "y(ellow)"
    g = "g(reen)"
    b = "b(lue)"
    r = "r(ed)"
    puts "The computer will randomly generate a combination of 4
     colors, consisting of a combination that may include
     #{y}, #{g}, #{r}, and #{b}.  Not all of the colors
     may be included in the secret combination.  There
     may be duplicates of some color.  If your guess is
     incorrect, you will be told how many colors are
     correct and how many colors are also in the correct
     position.  You may quit at any time by entering
     q(uit) or cheat and access the secret by entering
     (c)heat Good luck!"
  end

  def quit
    puts "Thank you for checking out Mastermind!  Goodbye"
    exit!
  end

  def game_flow
    if @guess.is_quit?
      self.quit
    elsif @guess.check_length?
      @feedback.print_feedback
    elsif @guess.is_play?
      self.instructions
      self.play
    elsif @guess.is_quit?
      self.quit
    elsif @guess.is_instructions?
      self.instructions
    elsif @guess.is_cheat?
      self.cheat
    elsif @guess.too_long?
      puts "Guess is too long, it must be 4 letters long.
       Try again."
    elsif @guess.too_short?
      puts "Guess is too short, it must be 4 letters long. Try again."
    end
  end
end
