require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "must have a title" do
    expect(Ticket.new).to_not be_valid
    expect(Ticket.new(title: "good")).to be_valid
  end

end
