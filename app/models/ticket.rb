class Ticket < ApplicationRecord
  belongs_to :event
  has_many :user_tickets
  has_many :users, through: :user_tickets

  validates :price, presence:true,
            numericality: {greater_than_or_equal_to: 0}

end
