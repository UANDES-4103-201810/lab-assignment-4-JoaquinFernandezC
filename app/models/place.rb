class Place < ApplicationRecord
	has_many :events
	validates :name, presence: true,
						length: {minimum: 20}
	validates :capacity, presence:true,
						numericality: {greater_than_or_equal_to: 0}
end
