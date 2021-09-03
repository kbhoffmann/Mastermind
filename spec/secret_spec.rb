require 'pry'
require './lib/secret'

RSpec.describe Secret do
  it "exists" do
  colors = ["blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red"]

  secret_1 = Secret.new(colors)


  expect(secret_1).to be_an_instance_of(Secret)
  end

  it "can return shuffle_4 which is 4 colors in random order" do

    colors = ["blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red", "blue", "green", "yellow", "red"]
    secret_1 = Secret.new(colors)

    expect(secret_1.shuffle_4.length).to eq(4)
    expect(secret_1.shuffle_4).to be_a(Array)
  end

  it "can shorten colors to single letter" do

    secret_2 = Secret.new(['red', 'green', 'yellow', 'blue'])

    secret_2.shuffle_4
    expect(secret_2.shortened[0].length).to eq(1)
  end
end
