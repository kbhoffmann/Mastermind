require 'pry'
require './lib/guess'
require './lib/secret'
require './lib/feedback'

RSpec.describe Feedback do

  it "exists" do
    computer_secret = ['r', 'g', 'y', 'b']
    guess_1 = ['r', 'g', 'b', 'y']
    guess = Guess.new(guess_1)
    secret = Secret.new(computer_secret)
    feedback = Feedback.new(secret, guess)

    expect(feedback).to be_an_instance_of(Feedback)
  end

  it "has a counter that starts at 0" do
    computer_secret = ['r', 'g', 'y', 'b']
    guess_1 = ['r', 'g', 'b', 'y']
    guess = Guess.new(guess_1)
    secret = Secret.new(computer_secret)
    feedback = Feedback.new(secret, guess)

    expect(feedback.counter_order).to eq(0)
  end

  it "can check if colors are in correct position (order matters)" do
    $computer_secret = ['red', 'green', 'yellow', 'blue']
    guess_1 = ['r', 'g', 'b', 'y']
    guess = Guess.new(guess_1)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)

    feedback.compare_order
    expect(feedback.counter_order).to eq(2)

  end

  it "can check how many colors match without order mattering" do
    $computer_secret = ['r', 'r', 'r', 'r']
    guess_1 = ['r', 'b', 'b', 'y']
    guess = Guess.new(guess_1)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)
    expect(feedback.compare_no_order).to eq(1)

    $computer_secret = ['r', 'r', 'b', 'b']
    guess_1 = ['r', 'r', 'b', 'b']
    guess = Guess.new(guess_1)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)
    expect(feedback.compare_no_order).to eq(2)

    $computer_secret = ['r', 'g', 'b', 'y']
    guess_1 = ['b', 'b', 'b', 'g']
    guess = Guess.new(guess_1)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)
    expect(feedback.compare_no_order).to eq(2)

    $computer_secret = ['r', 'b', 'g', 'y']
    guess_1 = ['y', 'g', 'b', 'r']
    guess = Guess.new(guess_1)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)
    expect(feedback.compare_no_order).to eq(4)
  end

  it "can give feedback to player about guess" do
    $time_end = 5
    $time_start = 0
    $computer_secret = ['r', 'b', 'g', 'y']
    guess_1 = ['y', 'g', 'b', 'r']
    guess = Guess.new(guess_1)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)

    feedback.print_feedback
    $time_end = 5
    $time_start = 0
    $computer_secret = ['r', 'b', 'g', 'y']
    guess_2 = ['g', 'g', 'b', 'r']
    guess = Guess.new(guess_2)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)

    feedback.print_feedback

    $time_end = 5
    $time_start = 0
    $computer_secret = ['g', 'g', 'b', 'r']
    guess_2 = ['g', 'g', 'b', 'r']
    guess = Guess.new(guess_2)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)

    feedback.print_feedback
  end


  it "will tell you if you have won" do

    $computer_secret = ['r', 'b', 'g', 'y']
    guess_1 = ['r', 'b', 'g', 'y']
    guess = Guess.new(guess_1)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)

    expect(feedback.is_win?).to be(true)

    $computer_secret = ['r', 'b', 'y', 'y']
    guess_1 = ['r', 'b', 'g', 'y']
    guess = Guess.new(guess_1)
    secret = Secret.new($computer_secret)
    feedback = Feedback.new(secret, guess)

    expect(feedback.is_win?).to be(false)
  end
end
