require 'pry'
require './lib/guess'
require './lib/secret'

RSpec.describe Feedback do

  xit "exists" do
    feedback = Feedback.new

    expect(feedback).to be_an_instance_of(Feedback)
  end

  #need to initialize a counter of some sort to count correct number of colors/positions
  xit "has a counter that starts at 0" do
    feedback = Feedback.new

    expect(feedback.counter).to eq(0)
  end


  #checks for correct position
  xit "can check if colors are in correct position" do

    feedback = Feedback.new
    computer_secret = ['r', 'g', 'y', 'b']
    guess_1 = ['r', 'g', 'b', 'y']
  #compare guess to computer_secret w/ .compare method. Compare array indicies
  #use .compare? or .compare
    expect(feedback.compare?).to be true
    #if true increase count by 1
    expect(feedback.compare?).to be false
    #if false do nothing
    expect(feedback.compare?).to be true
    expect(feedback.compare?).to be false
    expect(feedback.compare?).to be true
    expect(feedback.compare?).to be false
  end

  #counter increases by 1 for each true from .compare
  xit "it counts number of true values" do

    feedback = Feedback.new
    computer_secret = ['r', 'g', 'y', 'b']
    guess_1 = ['r', 'g', 'b', 'y']

    expect(feedback.counter).to eq(0)
    expect(feedback.counter).to eq(1)
    expect(feedback.counter).to eq(2)
    expect(feedback.counter).to eq(3)
    expect(feedback.counter).to eq(4)
  end

  #checks for correct number of colors
  #put into a hash??? to count colors or find_do all?

  #hash example--> colors_guess = {red: #, green: #, yellow: #, blue: #}
  #                colors_secret = {red: #, green: #, yellow: #, blue: #}
  xit "" do
    expect().to eq()
  end

  #This gives feedback in regards to correct colors AND position.   Need to account for just correct Number of colors correct too.
  xit "can give feedback to player about guess" do

    feedback = Feedback.new
    computer_secret = ['r', 'g', 'y', 'b']
    guess_1 = ['r', 'g', 'b', 'y']
    #Would print feedback that "#{guess_} has 0 of the correct elements in the correct position.
    expect(feedback.counter).to eq(0)

    #Would print feedback that "#{guess_} has 1 of the correct elements in the correct position.
    expect(feedback.counter).to eq(1)

    #Would print feedback that "#{guess_} has 2 of the correct elements in the correct position.
    expect(feedback.counter).to eq(2)

    #Would print feedback that "#{guess_} has 3 of the correct elements in the correct position.
    expect(feedback.counter).to eq(3)

    #Would print "Congratulations! You guessed the sequence #{computer_secret} in #{number_number_of_guesses} over #{time_of_play}.   Do you want to (p)lay again or (q)uit?
    #gets.chomp
    expect(feedback.counter).to eq(4)
  end

  xit "will provide feedback" do
    expect().to eq()
  end

  #if guess not correct, player guesses again.
  xit "can have a player guess again" do

    feedback = Feedback.new
    computer_secret = ['r', 'g', 'y', 'b']
    guess_2 = ['g', 'g', 'b', 'y']

    expect().to eq()
  end

  xit "" do
    expect().to eq()
  end

  xit "" do
    expect().to eq()
  end

end

computer_secret = ['r', 'g', 'y', 'b']
guess_1 = ['r', 'g', b', 'y']
# secret_2 = Secret.new(['red', 'green', 'yellow', 'blue'])
# secret_2.shuffle_4
# computer_secret = secret_2.shortened

# --right color in right location???
# computer_secret[0] == guess [0]
# color_4[1] == guess [1]
# (0..3)  loop through index ranges 0 thru 3

# --right color/ number of instances of that color. in general not specific to location?
# hash_name key = color
#           value = number of times color is present in array/hash
#
#           ie-   guess_hash = {blue: 2, green: 1, yellow: 1}
