require 'pry'
require './lib/secret'

RSpec.describe Secret do
  it "exists" do


  secret_1 = Secret.new
  expect(secret_1).to be_an_instance_of(Secret)
  end
end
