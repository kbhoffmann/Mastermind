require 'pry'
require './lib/guess'
require './lib/secret'

RSpec.describe Guess do

  it "exists" do
    guess_1 = Guess.new('rgby')

    expect(guess_1).to be_an_instance_of(Guess)
  end

  it "can take a user input" do
    user_input_1 = "rgby"
    guess_1 = Guess.new(user_input_1)
    # colors = ["blue", "green", "yellow", "red"]
    # secret_1 = Secret.new(colors)
    expect(guess_1.user_input).to eq("rgby")
  end

  it "can tell if user input is correct" do
    user_input = "rgbi"
    guess_1 = Guess.new(user_input)

    expect(guess_1.check_length?).to eq(true)

    user_input = "rgbys"
    guess_3 = Guess.new(user_input)

    expect(guess_3.check_length?).to eq(false)
  end

end

#   xit "can identify the correct answer" do
#     user_input = "bgyr"
#     guess_1 = Guess.new(user_input)
#     colors = ["blue", "green", "yellow", "red"]
#     secret_1 = Secret.new(colors)
#
#     expect(guess_1.correct_format).to eq(secret_1.shortened)
#
#     user_input = "rgby"
#     guess_2 = Guess.new(user_input)
#     colors = ["blue", "green", "yellow", "blue"]
#     secret_2 = Secret.new(colors)
#
#     expect(guess_2.correct_format).to not_eq(secret_2.shortened)
#   end
#
#   xit "can identify if user wants to quit" do
#
#     user_input = "q"
#     guess_1 = Guess.new(user_input)
#
#     expect(guess_1.is_quit?).to eq(true)
#
#     user_input = "i"
#     guess_2 = Guess.new(user_input)
#
#     expect(guess_2.is_quit?).to eq(false)
#   end
#
#   xit "can identify if user wants to see instructions" do
#
#     user_input = "i"
#     guess_1 = Guess.new(user_input)
#
#     expect(guess_1.is_instructions?).to eq(true)
#
#     user_input = "p"
#     guess_2 = Guess.new(user_input)
#
#     expect(guess_2.is_instructions?).to eq(false)
#
#   end
#   xit "can identify if user wants to play the game" do
#
#     user_input = "p"
#     guess_1 = Guess.new(user_input)
#
#     expect(guess_1.is_play?).to eq(true)
#
#     user_input = "i"
#     guess_2 = Guess.new(user_input)
#
#     expect(guess_2.is_play?).to eq(false)
#
#   end
#
#   xit "can identify if user wants to cheat" do
#     user_input = "c"
#     guess_1 = Guess.new(user_input)
#
#     expect(guess_1.is_play?).to eq(true)
#
#     user_input = "i"
#     guess_2 = Guess.new(user_input)
#
#     expect(guess_2.is_play?).to eq(false)
#   end
#
# end
