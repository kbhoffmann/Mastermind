require "./spec/secret_spec.rb"

class Guess
  attr_reader :user_input
  def initialize (user_input)
    @user_input = user_input
  end

  def check_length?
    user_input.length == 4
  end

  def correct_format
    user_input.split("")
  end

  def is_quit?
    user_input == "q"
  end

  def is_instructions?
    user_input == "i"
  end

  def is_play?
    user_input == "p"
  end

  def is_cheat?
    user_input == "c"
  end
end
