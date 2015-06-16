class TicketsController < ApplicationController
  def create
    board_id = params['ticket']['board_id']
    Ticket.create(title: params['ticket']['title'], board_id: board_id)
    redirect_to board_path(board_id)
  end
  
  def up
    ticket = Ticket.find_by(id: params['id'])
    ticket.up
    redirect_to board_path(ticket.board)
  end
end
