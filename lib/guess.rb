class Guess
  attr_reader :user_input
  def initialize (user_input)
    @user_input = user_input
  end

  def check_length?
    user_input.length == 4
  end
end
