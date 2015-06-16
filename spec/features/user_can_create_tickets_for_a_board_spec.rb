require "rails_helper"

RSpec.feature "User can", :type => :feature do
  scenario "see tickets on a board path" do
    board = Board.create(title: "first project")
    ticket = board.tickets.create(title: "I'm gonna write a test", status: 0)

    visit board_path(board)
    expect(page).to have_text(board.title)
    expect(page).to have_text(ticket.title)
  end
end
