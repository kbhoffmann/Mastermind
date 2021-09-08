require 'pry'
require './lib/guess'
require './lib/secret'
require "./spec/secret_spec.rb"

RSpec.describe Guess do

  it "exists" do
    guess_1 = Guess.new('rgby')

    expect(guess_1).to be_an_instance_of(Guess)
  end

  it "can take a user input" do
    user_input_1 = "rgby"
    guess_1 = Guess.new(user_input_1)

    expect(guess_1.user_input).to eq("rgby")
  end

  it "can tell if user input is 4 char long" do
    user_input = "rgbi"
    guess_1 = Guess.new(user_input)

    expect(guess_1.check_length?).to eq(true)

    user_input = "rgbys"
    guess_3 = Guess.new(user_input)

    expect(guess_3.check_length?).to eq(false)
  end

  it "can turn the guess into proper format (array)" do

    user_input = "rgby"
    guess_1 = Guess.new(user_input)

    expect(guess_1.correct_format).to eq(["r", "g", "b", "y"])
  end

  it "can identify if user wants to quit" do

    user_input = "q"
    guess_1 = Guess.new(user_input)

    expect(guess_1.is_quit?).to eq(true)

    user_input = "i"
    guess_2 = Guess.new(user_input)

    expect(guess_2.is_quit?).to eq(false)
  end

  it "can identify if user wants to see instructions" do

    user_input = "i"
    guess_1 = Guess.new(user_input)

    expect(guess_1.is_instructions?).to eq(true)

    user_input = "p"
    guess_2 = Guess.new(user_input)

    expect(guess_2.is_instructions?).to eq(false)

  end

  it "can identify if user wants to play the game" do

    user_input = "p"
    guess_1 = Guess.new(user_input)

    expect(guess_1.is_play?).to eq(true)

    user_input = "i"
    guess_2 = Guess.new(user_input)

    expect(guess_2.is_play?).to eq(false)

  end

  it "can identify if user wants to cheat" do

    user_input = "c"
    guess_1 = Guess.new(user_input)

    expect(guess_1.is_cheat?).to eq(true)

    user_input = "i"
    guess_2 = Guess.new(user_input)

    expect(guess_2.is_cheat?).to eq(false)
  end

  it "can tell if input is too short" do
    user_input = "dr"
    guess_1 = Guess.new(user_input)

    expect(guess_1.too_short?).to eq(true)

    user_input = "drdd"
    guess_1 = Guess.new(user_input)

    expect(guess_1.too_short?).to eq(false)

  end

  it "can tell if input is too long" do

    user_input = "drddd"
    guess_1 = Guess.new(user_input)

    expect(guess_1.too_long?).to eq(true)

    user_input = "drdd"
    guess_1 = Guess.new(user_input)

    expect(guess_1.too_long?).to eq(false)

  end
end
