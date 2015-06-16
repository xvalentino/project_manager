require "rails_helper"

RSpec.feature "User can", :type => :feature do
  scenario "see tickets on a board path" do
    board = Board.create(title: "first project")
    ticket = board.tickets.create(title: "I'm gonna write a test", status: 0)

    visit board_path(board)
    expect(page).to have_text(board.title)
    expect(page).to have_text(ticket.title)
  end

  scenario "create a ticket on the board show" do
    board = Board.create(title: "first project")
    ticket = {title: "first ticket"}

    expect(board.tickets.all.count).to eq(0)
    visit board_path(board)
    fill_in "Title", with: ticket[:title]
    click_link_or_button "Create Ticket"
    expect(page).to have_text(ticket[:title])
    expect(board.tickets.count).to eq(1)
  end

  scenario "advance a ticket" do
    board = Board.create(title: "first project")
    ticket = board.tickets.create(title: "hi")
    visit board_path(board)
    expect(ticket.status).to eq(0)
    click_link_or_button "Current Sprint"
    # expect(ticket.status).to eq(1)
  end
end
