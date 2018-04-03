class User < ApplicationRecord
	has_many :user_tickets
	has_many :tickets, :through => :user_tickets
	validates :email, presence: true,
            format:{with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :phone, length: {in:9..12},
            numericality: {only_integer: true},
            presence: true
  validates :password, length: {in:8..12},
            format:{with: /[A-Za-z0-9]+/},
            presence: true
end
