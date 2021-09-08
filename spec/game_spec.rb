require 'pry'
require './lib/game'
require './lib/guess'
require './lib/secret'
require './lib/feedback'

RSpec.describe Game do

  it "exists" do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  it "can let a user cheat" do
    game = Game.new
    secret_2 = Secret.new('rgyb')
    expect(game.cheat).to eq(secret_2.shortened.join.upcase)
  end


end
