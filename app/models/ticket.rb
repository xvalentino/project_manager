class Ticket < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :board

  before_save :set_status_to_zero

  def set_status_to_zero
    self.status = 0
  end
end
