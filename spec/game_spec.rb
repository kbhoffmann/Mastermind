# Finish testing instructions, play, and quit. Introduction/Game class test is complete.


require 'pry'
require './lib/game.rb'

RSpec.describe Game do
  it "exists" do
    game_1 = Game.new
    expect(game_1).to be_an_instance_of(Game)
  end
  it "has an introduction" do
    game_1 = Game.new
    welcome_message = "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
    expect(game_1.welcome).to eq(welcome_message)
  end
  it "has instructions" do

  end
  it "plays the game" do

  end
  it "can quit the game" do

  end
end
