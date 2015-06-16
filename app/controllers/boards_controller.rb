class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @board = Board.new
  end

  def create
    require 'pry'; binding.pry
  end
end
