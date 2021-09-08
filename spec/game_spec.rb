require 'pry'
require './lib/game'
require './lib/guess'
require './lib/secret'
# require './mastermind'
require './lib/feedback'

RSpec.describe Game do
  it "exists" do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  # it "can let a user cheat" do
  #   game = Game.new
  #   secret_2 = Secret.new('rgyb')
  #   expect(game.cheat).to eq(secret_2.shortened)
  # end


















  it "can start tracking time" do
    game = Game.new
    p game.start_time
  end

  it "can stop tracking time" do
    game = Game.new
    p game.end_time
  end

  it "can calculate time elapsed" do
    game = Game.new
    p game.time_elapsed
  end

end
