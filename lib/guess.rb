require "./spec/secret_spec.rb"

class Guess
  @@count = 0
  attr_reader :user_input
  def initialize (user_input)
    @user_input = user_input
    @@count += 1
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
  def count
    @@count
  end
end
