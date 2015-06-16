require "rails_helper"

RSpec.feature "User can", :type => :feature do
  scenario "see index of boards on root path" do
    board = Board.create(title: "first project")
    visit root_path
    expect(page).to have_text(board.title)
  end

  scenario "create a board on the index page" do
    expect(Board.all.count).to eq(0)
    board = {title: "first project"}
    visit root_path
    fill_in "Title", with: board[:title]
    click_link_or_button "Create Board"
    expect(page).to have_text(board[:title])
    expect(Board.all.count).to eq(1)
  end
end
