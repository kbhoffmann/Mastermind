require 'pry'
require './lib/guess'
require './lib/secret'

RSpec.describe Guess do

  it "exists" do
    guess_1 = Guess.new("rgby")

  expect(guess_1).to be_an_instance_of(Guess)
  end


  it "can identify if it is the correct format" do
    user_input = "rgby"
    guess_1 = Guess.new(user_input)
    colors = ["blue", "green", "yellow", "red"]
    secret_1 = Secret.new(colors)

    expect(guess_1.user_input).to eq(true)

    user_input = "rgbi"
    guess_2 = Guess.new(user_input)

    expect(guess_2.user_input).to eq(false)

    user_input = "rgbys"
    guess_3 = Guess.new(user_input)

    expect(guess_3.user_input).to eq(false)

    user_input = "2345"
    guess_4 = Guess.new(user_input)

    expect(guess_4.user_input).to eq(false)

    user_input = "i"
    guess_5 = Guess.new(user_input)

    expect(guess_5.user_input).to eq(false)
  end

  it "can identify the correct answer" do
    user_input = "bgyr"
    guess_1 = Guess.new(user_input)
    colors = ["blue", "green", "yellow", "red"]
    secret_1 = Secret.new(colors)

    expect(guess_1.correct_format).to eq(secret_1.shortened)

    user_input = "rgby"
    guess_2 = Guess.new(user_input)
    colors = ["blue", "green", "yellow", "blue"]
    secret_2 = Secret.new(colors)

    expect(guess_2.correct_format).to not_eq(secret_2.shortened)
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

    expect(guess_1.is_play?).to eq(true)

    user_input = "i"
    guess_2 = Guess.new(user_input)

    expect(guess_2.is_play?).to eq(false)
  end

end
