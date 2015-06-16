require "rails_helper"

RSpec.feature "User can see boards", :type => :feature do
  scenario "on root path" do
    board = Board.create(title: "first project")
    visit root_path
    expect(page).to have_text(board.title)
  end
end
