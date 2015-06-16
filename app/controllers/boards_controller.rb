class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @board = Board.new
  end

  def create
    board = Board.create(title: params['board']['title'])
    redirect_to board_path(board)
  end

  def show
    @board = Board.includes(:tickets).find_by(id: params['id'])
    @tickets = @board.tickets
  end
end
