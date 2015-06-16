class Ticket < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :board

  before_save :set_status_to_zero

  def set_status_to_zero
    self.status = 0
  end

  def backlogs
    Ticket.where(status: 0)
  end
  def current_sprint
    Ticket.where(status: 1)
  end
  def in_progress
    Ticket.where(status: 2)
  end
  def done
    Ticket.where(status: 3)
  end
end
