
class Guess
  attr_reader :user_input
  def initialize (user_input)
    @user_input = user_input
  end

  puts "What is your first guess?"
  @user_input = $stdin.gets.chomp

  def check_length?
    @user_input.length == 4
  end

  def guess_length
    # if @user_input.length == 4
    #   #enter game play
    if @user_input.length > 4
      puts "Guess is too long, it must be 4 letters long. Try again."
      puts '<'
      @user_input = $stdin.gets.chomp

    elsif @user_input.length < 4
      puts "Guess is too short, it must be 4 letters long. Try again."
      puts '<'
      @user_input = $stdin.gets.chomp
    end
  end

  def correct_format
    @user_input.split("")
  end

  def is_quit?
    @user_input == "q"
  end

  def is_instructions?
    @user_input == "i"
  end

  def is_play?
    @user_input == "p"
  end

  def is_cheat?
    @user_input == "c"
  end
end
