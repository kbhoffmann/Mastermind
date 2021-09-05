
class Feedback
  attr_reader :counter, :secret, :guess, :counter_order, :counter_no_order
  def initialize(secret, guess)
    @secret = secret
    @guess = guess
    @counter_order = 0
    @counter_no_order = 0
    @counter_no_order_num = []
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
  end

  def compare_no_order
    require 'pry' ; binding.pry
    secret.shuffle_4
    guess.correct_format.uniq.find_all do |i|
       @counter_no_order_num << ((secret.colors_4).find {|x| i == x})
    end
     @counter_no_order_num = @counter_no_order_num.compact
     @counter_no_order_num.length



  end









end
