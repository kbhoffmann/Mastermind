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
  end
end
