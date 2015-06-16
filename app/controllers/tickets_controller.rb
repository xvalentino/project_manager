class TicketsController < ApplicationController
  def create
    board_id = params['ticket']['board_id']
    Ticket.create(title: params['ticket']['title'], board_id: board_id)
    redirect_to board_path(board_id)
  end

end
