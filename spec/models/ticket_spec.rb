require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "must have a title" do
    expect(Ticket.new).to_not be_valid
    expect(Ticket.new(title: "good")).to be_valid
  end

  it "has enum status that defaults to 0" do
    ticket = Ticket.create(title: "good")
    expect(ticket.status).to eq(0)
  end
end
