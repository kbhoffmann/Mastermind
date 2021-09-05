
class Feedback
  attr_reader :counter, :secret, :guess, :counter_order
  def initialize(secret, guess)
    @secret = secret
    @guess = guess
    @counter_order = 0
    @no_order_uniq_array = []
  end

  def compare_order
    secret.shuffle_4
    4.times do |i|
      if secret.colors_4[i] == guess.correct_format[i]
        @counter_order += 1
      else secret.colors_4[i] != guess.correct_format[i]
        @counter_order += 0
      end
    end
    @counter_order
  end

  def compare_no_order
    secret.shuffle_4
    guess.correct_format.uniq.find_all do |i|
       @no_order_uniq_array << ((secret.colors_4).find {|x| i == x})
    end
     @no_order_uniq_array = @no_order_uniq_array.compact
     @no_order_uniq_array.length
  end

  def print_feedback
    puts "'#{guess.user_input.join.upcase}' has #{self.compare_no_order} of the correct elements with #{self.compare_order} in the correct positions\nYou've taken #{guess.count} guess"

  end








end
