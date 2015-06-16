class Ticket < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :board
end
