class Guess
  $count = 0
  attr_reader :user_input
  def initialize (user_input)
    @user_input = user_input
    $count += 1
  end

  def check_length?
    user_input.length == 4
  end

  def correct_format
    if user_input.kind_of?(Array)
      return user_input
    else
    user_input.split("")
    end
  end

  def is_quit?
    user_input == "q" || user_input == "quit"
  end

  def is_instructions?
    user_input == "i" || user_input == "instructions"
  end

  def is_play?
    user_input == "p" || user_input == "play"
  end

  def is_cheat?
    user_input == "c" || user_input == "cheat"
  end

  def too_short?
    @user_input.length < 4
  end

  def too_long?
    @user_input.length > 4
  end

end
