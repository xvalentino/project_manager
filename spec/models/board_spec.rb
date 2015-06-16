require 'rails_helper'

RSpec.describe Board, type: :model do
  it "must have a title" do
    valid = Board.new(title: "I'm good")
    invalid = Board.new
    expect(valid).to be_valid
    expect(invalid).to_not be_valid
  end
end
